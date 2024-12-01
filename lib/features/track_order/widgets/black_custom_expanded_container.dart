import 'package:car_wash_mobile_app/features/track_order/widgets/service_provider_info.dart';
import 'package:car_wash_mobile_app/features/track_order/widgets/custom_timeline_tile_list_container.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// created for the black container that displays the service provider's name , image , and mobile phone
/// created by naira ali
/// created at 15/10/2024

class BlackCustomExpandedContainer extends StatelessWidget {
  const BlackCustomExpandedContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: ColorName.grey,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35.r),
            topLeft: Radius.circular(35.r),
          ),
        ),
        child: Column(
          children: [
            ///custom filed for provider info
            /// created by naira ali
            /// created at 15/10/2024
            ServiceProviderInfo(
              providerName: 'service_provider',
              providerPhone: '01023456789',
              providerImage: Assets.images.serviceProviderImage.path,
            ),
            const CustomTimelineTileListContainer()
          ],
        ),
      ),
    );
  }
}
