import 'dart:async';
import 'package:car_wash_mobile_app/features/contact_us/presentation/cubit/branches_cubit/branches_cubit.dart';
import 'package:car_wash_mobile_app/features/contact_us/presentation/widgets/branch_section.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class CallUsMap extends StatefulWidget {
  const CallUsMap({super.key});

  @override
  State<CallUsMap> createState() => _CallUsMapState();
}

class _CallUsMapState extends State<CallUsMap> {
  // final Completer<GoogleMapController> _controller =
  //     Completer<GoogleMapController>();
  //
  // static const CameraPosition _initialPosition = CameraPosition(
  //   target:
  //       LatLng(-18.9216855, 47.5725194), // Antananarivo, Madagascar LatLng 🇲🇬
  //   zoom: 14.4746,
  // );
  //
  // late StreamSubscription<Position>? locationStreamSubscription;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   locationStreamSubscription =
  //       StreamLocationService.onLocationChanged?.listen(
  //     (position) async {
  //       await FirestoreService.updateUserLocation(
  //         userFcmToken:
  //             'djmp2yMLTX-ypF5tBg54o2:APA91bGZoSOyLkBGqbQVscuamk9bblxf6YgL-KtS5jMW1i_rGOLvhWqXXKtJIV8WIDRYrCNI20OP9P5Y495OiiOUIIHLuPlJyix2EXKe4gjUMHdEiNmJNws', //Hardcoded uid but this is the uid of the connected user when using authentification service
  //         location: LatLng(position.latitude, position.longitude),
  //       );
  //     },
  //   );
  // }
  //
  // @override
  // void dispose() {
  //   super.dispose();
  //   locationStreamSubscription?.cancel();
  // }

  late BranchesCubit branchesCubit;

  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();

  Position? position;
  CameraPosition? kGooglePlex;

  Future<void> getCurrentPosition() async {
    var permission = await Permission.location.request();

    if (permission.isGranted) {
      try {
        position = await Geolocator.getCurrentPosition();
        setState(() {
          kGooglePlex = const CameraPosition(
            ///31.043408, 31.376354
            target: LatLng(31.043408, 31.376354),
            // target: LatLng(position!.latitude, position!.longitude),
            zoom: 14.4746,
          );
        });
      } catch (e) {
        print('Error fetching current position: $e');
      }
    } else if (permission.isDenied) {
      print('Location permission denied.');
    } else if (permission.isPermanentlyDenied) {
      print(
          'Location permission permanently denied. Please enable it from settings.');
      await openAppSettings(); // Opens the app settings
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentPosition();
    branchesCubit= BlocProvider.of(context);
  }

  void _onMapCreated(GoogleMapController controller) {
    try {
      _controller.complete(controller);
      debugPrint('GoogleMapController initialized successfully.');
    } catch (e) {
      debugPrint('Error during GoogleMapController initialization: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.3,
    //   child: StreamBuilder<List<User>>(
    //     stream: FirestoreService.userCollectionStream(),
    //     builder: (context, snapshot) {
    //       if (!snapshot.hasData) {
    //         return const Center(
    //           child: CircularProgressIndicator(),
    //         );
    //       }
    //       final Set<Marker> markers = {};
    //       for (var i = 0; i < snapshot.data!.length; i++) {
    //         final user = snapshot.data![i];
    //         markers.add(
    //           Marker(
    //             markerId: MarkerId('${user.userFcmToken} position $i'),
    //             icon: user.userFcmToken == 'stephano'
    //                 ? BitmapDescriptor.defaultMarkerWithHue(
    //                     BitmapDescriptor.hueRed,
    //                   )
    //                 : BitmapDescriptor.defaultMarkerWithHue(
    //                     BitmapDescriptor.hueYellow,
    //                   ),
    //             position: LatLng(user.location.lat, user.location.lng),
    //             onTap: () => {},
    //           ),
    //         );
    //       }
    //       return GoogleMap(
    //         initialCameraPosition: _initialPosition,
    //         markers: markers,
    //         onMapCreated: (GoogleMapController controller) {
    //           _controller.complete(controller);
    //         },
    //       );
    //     },
    //   ),
    // );
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: kGooglePlex != null
          ? Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: kGooglePlex!,
                  onMapCreated: _onMapCreated,
                ),
                const BranchSection(),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(
                color: ColorName.mintGreen,
              ),
            ),
    );
    // return SizedBox(
    //   height: MediaQuery.of(context).size.height * 0.3,
    //   child: Image.asset(
    //     Assets.images.callUsMap.path,
    //     width: double.infinity,
    //     fit: BoxFit.fitWidth,
    //   ),
    // );
  }
}
