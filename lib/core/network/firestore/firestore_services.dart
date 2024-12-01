import 'package:car_wash_mobile_app/core/network/firestore/location_firestore_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FirestoreService {
  static final _firestore = FirebaseFirestore.instance;

  static Future<void> updateUserLocation(
      {required String userFcmToken,required LatLng location}) async {
    try {
      print('+++++LAT:${location.latitude}');
      print('+++++LNG:${location.longitude}');
      print('+++++token:$userFcmToken');
      await _firestore.collection('user').doc(userFcmToken).update({
        'location': {'lat': location.latitude, 'lng': location.longitude},
      });
    } on FirebaseException catch (e) {
      print('+++++Ann error due to firebase occured $e');
    } catch (err) {
      print('+++++Ann error occured $err');
    }
  }

  static Stream<List<User>> userCollectionStream() {
    return _firestore.collection('user').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => User.fromMap(doc.data())).toList());
  }
}