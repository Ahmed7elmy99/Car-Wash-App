import 'dart:convert';
import 'dart:developer';

import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/Branch_model/branch_model.dart';
import 'package:car_wash_mobile_app/features/order_service/data/model/car_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// A Class To Handle Shared Prefrences it uses singleton
/// to load the shared pref once and use it along the app
/// created by amr elnbawy
/// date 21 /10
class SharedPref {
  SharedPref._privateConstructor(); // Private constructor for singleton

//make the instance public (by waleed at 4/11/2024)
  static final SharedPref instance = SharedPref._privateConstructor();
  factory SharedPref() => instance;

  late SharedPreferences _prefs;

  Future<void> setupPref() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: Save branches to shared preference
  Future<void> saveBranches(List<BranchModel> branches) async {
    final branchJsonList = branches.map((branch) => branch.toJson()).toList();
    await _prefs.setString('cachedBranches', jsonEncode(branchJsonList));
    await _prefs.setInt('branchesCacheTime',
        DateTime.now().millisecondsSinceEpoch); //Cache time for validation
  }

// Edited by: Nadeen Mohamed
// Edited at date: 21/11/2024
// Retrieve branches from shared preferences
  Future<List<BranchModel>?> loadBranches() async {
    final cachedData = _prefs.getString('cachedBranches');
    if (cachedData == null) return null;

    final List<dynamic> jsonList = jsonDecode(cachedData);
    return jsonList.map((json) => BranchModel.fromJson(json)).toList();
  }
  bool isCacheValid(Duration cacheDuration) {
    final cacheTime = _prefs.getInt('branchesCacheTime') ?? 0;
    return DateTime.now().millisecondsSinceEpoch - cacheTime <=
        cacheDuration.inMilliseconds;
  }

  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note:  Save user's cars in shared preferences
  Future<void> saveUserCars(List<CarModel> cars) async {
    final carListJson =
        cars.map((car) => jsonEncode(car.toJson())).toList(); // Serialize cars
    await _prefs.setStringList('userCars', carListJson);
  }
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: Get user's cars from shared preferences
  Future<List<CarModel>> getUserCarsFromCache() async {
    final carListJson = _prefs.getStringList('userCars');
    if (carListJson == null) return [];
    return carListJson.map((carJson) {
      final json = jsonDecode(carJson);
      return CarModel.fromJson(json);
    }).toList();
  }

  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note:  Save addresses to shared preferences
  Future<void> saveAddresses(List<AddressModel> addresses) async {
    final addressJsonList = addresses.map((address) => address.toJson()).toList();
    await _prefs.setString('cachedAddresses', jsonEncode(addressJsonList));
    await _prefs.setInt(
      'addressesCacheTime',
      DateTime.now().millisecondsSinceEpoch,
    ); // Cache time for validation
  }
  
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: Load addresses from shared preferences
  Future<List<AddressModel>?> loadAddresses() async {
    final cachedData = _prefs.getString('cachedAddresses');
    if (cachedData == null) return null;

    final List<dynamic> jsonList = jsonDecode(cachedData);
    return jsonList.map((json) => AddressModel.fromJson(json)).toList();
  }
  
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note:  Check if the address cache is still valid
  bool isAddressCacheValid(Duration cacheDuration) {
    final cacheTime = _prefs.getInt('addressesCacheTime') ?? 0;
    return DateTime.now().millisecondsSinceEpoch - cacheTime <=
        cacheDuration.inMilliseconds;
  }

  bool intialRoute() {
    bool isFirstTime = _prefs.getBool('isFirstTime') ?? false;
    log(isFirstTime.toString());
    return isFirstTime;
  }

  Future<void> setFirstTime() async {
    await _prefs.setBool("isFirstTime", true);
  }

  /// Saves the user's package Ids in the shared pref
  ///
  /// This function takes a list of package Ids as a parameter and saves it in the shared pref
  /// The key used to store the package Ids is ["packageIds"]
  Future<void> setUserPackageIds(List<String> packageIds) async {
    await _prefs.setStringList("packageIds", packageIds);
  }

  /// Retrieves the user's package Ids from the shared preferences.
  ///
  /// This function returns a list of package Ids that were previously saved
  /// in the shared preferences under the key ["packageIds"].
  /// If no package Ids have been saved, it returns null.
  Future<List<String>?> getUserPackageIds(List<String> packageIds) async {
    return _prefs.getStringList("packageIds");
  }

  Future<void> saveNotificationPreference(bool isEnabled) async {
    await _prefs.setBool('notificationsEnabled', isEnabled);
  }

  bool loadNotificationPreference() {
    return _prefs.getBool('notificationsEnabled') ??
        true; // Default to false if not set
  }
}
