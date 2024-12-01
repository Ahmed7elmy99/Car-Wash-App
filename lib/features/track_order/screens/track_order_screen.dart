import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/track_order/widgets/black_custom_expanded_container.dart';
import 'package:car_wash_mobile_app/features/track_order/widgets/track_order_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});
  static const String id = '/trackOrderScreen';

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flex(
        direction: Axis.vertical,
        children: [
          ///Map area
          /// created by naira ali
          /// created at 15/10/2024
          Expanded(
            child: Stack(
              children: [
                /**
                 * edited by naira ali [21/11/2024]
                 * moved track order map to separated file
                 */
                const TrackOrderMap(),

                /// arrow back icon
                /// created by naira ali
                /// created at 15/10/2024

                Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.w, 59.h, 0.w, 0.h),
                    child: const CustomBackButton())
              ],
            ),
          ),

          ///expanded container custom widget for other details
          /// created by naira ali
          /// created at 15/10/2024
          const BlackCustomExpandedContainer()
        ],
      ),
      // ///display the map
      // body: GoogleMap(
      //   //starting point on the map is the user location
      //   initialCameraPosition: CameraPosition(target: _userLocation, zoom: 12),
      //   //mark the user location and order location with a sign
      //   markers: {
      //     ///user marker
      //     Marker(
      //         markerId: const MarkerId("userLocation"),
      //         position: _userLocation,
      //         infoWindow: const InfoWindow(title: "User Location")),
      //
      //     ///order marker
      //     Marker(
      //         markerId: const MarkerId("orderLocation"),
      //         position: _orderLocation,
      //         infoWindow: const InfoWindow(title: "Order Location")),
      //   },
      //
      //   //to make a line between user location and order location
      //   polylines: {
      //     Polyline(
      //       polylineId: const PolylineId("route"),
      //       points: [_userLocation, _orderLocation],
      //       color: Colors.grey,
      //       width: 5,
      //     ),
      //   },
      //   onMapCreated: (GoogleMapController controller) {
      //     _googleMapController = controller;
      //   },
      // ),
    );
  }
}
