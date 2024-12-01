import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/widgets/custom_address_radio%20button.dart';
import 'package:car_wash_mobile_app/features/choose_address/presentation/choose_address_screen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressItem extends StatelessWidget {
  const AddressItem(
      {super.key,
      required this.address,
      this.isselected = false,
      required this.onTap});
  final AddressModel address;
  final bool isselected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 5.sp),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(
              color: const Color(0xffE8E8E8),
              width: 1.5,
            ), // Border around the entire widget
          ),
          padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 20),
          child: Column(
            children: [
              Row(children: [
                Container(
                  width: 20.sp,
                  height: 20.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isselected
                          ? ColorName.mintGreen
                          : Colors.grey, // Color of the border
                      width: 1.0, // Set the thickness of the border here
                    ),
                  ),
                  child: isselected
                      ? Center(
                          child: Container(
                            width: 10.sp,
                            height: 10.sp,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorName.mintGreen,
                            ),
                          ),
                        )
                      : Container(),
                ),
                const SizedBox(
                    width: 8), // Space between the radio button and label
                // Flexible to ensure the label text doesn't overflow
                Text(
                  address.nameAddress,
                  style: AppTextStyles.kBlack12FontW400,
                  overflow: TextOverflow
                      .ellipsis, // Handles overflow by adding ellipsis
                ),
              ]),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Icon(Icons.location_pin,
                      color: ColorName.mintGreen, size: 20.sp),
                  const SizedBox(width: 15),
                  // Expanded ensures the address text fits within the row and doesn't overflow
                  Expanded(
                    child: Text(
                      '${address.street} - ${address.city} - ${address.region}',
                      style: AppTextStyles.kBlack12FontW400,
                      overflow: TextOverflow
                          .ellipsis, // Handle long addresses gracefully
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
