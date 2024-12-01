import 'dart:async';

import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class TrackOrderMap extends StatefulWidget {
  const TrackOrderMap({super.key});

  @override
  State<TrackOrderMap> createState() => _TrackOrderMapState();
}

class _TrackOrderMapState extends State<TrackOrderMap> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

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
    return SizedBox(
      width: double.infinity,
      child: kGooglePlex != null
          ? GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: kGooglePlex!,
              onMapCreated: _onMapCreated,
            )
          : const Center(
              child: CircularProgressIndicator(
              color: ColorName.mintGreen,
            )),
    );
    // return   SizedBox(
    //   width: double.infinity,
    //   child: Image.asset(
    //     Assets.images.trackOrderMap.path,
    //     fit: BoxFit.fitWidth,
    //   ),
    // );
  }
}
