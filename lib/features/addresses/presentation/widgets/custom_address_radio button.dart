import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/screens/add_new_address_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

//created by : Abdullah Ghaith
//created at : 14/10/2024
//Address radio button widget to display the address radio button
class CustomRadioButton extends StatelessWidget {
  final Function() onTap;
  final AddressModel addressModel;

  const CustomRadioButton({
    super.key,
    required this.onTap,
    required this.addressModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          color: const Color(0xffE8E8E8),
          width: 1.5,
        ), // Border around the entire widget
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // GestureDetector only around the radio button
              GestureDetector(
                onTap: onTap, // Tapping only affects the radio button
                child: Container(
                  width: 20.sp, // Radio button size
                  height: 20.sp,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: addressModel.isDefault == 'افتراضي'
                          ? ColorName.mintGreen
                          : Colors.grey, // Color of the border
                      width: 1.0, // Set the thickness of the border here
                    ),
                  ),
                  child: addressModel.isDefault == 'افتراضي'
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
                      : null,
                ),
              ),
              const SizedBox(
                  width: 8), // Space between the radio button and label
              // Flexible to ensure the label text doesn't overflow
              Text(
                addressModel.nameAddress,
                style: AppTextStyles.kBlack12FontW400,
                overflow: TextOverflow
                    .ellipsis, // Handles overflow by adding ellipsis
              ),
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        AddNewAddressScreen.id,
                        extra: {
                          'isEdit': true,
                          'addressModel':
                              addressModel, // Pass the address model
                        },
                      );
                    },
                    child: SizedBox(
                      width: 30.sp,
                      height: 30.sp,
                      child: Image.asset(
                        Assets.images.editFrame.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.sp),
                  GestureDetector(
                    onTap: () {
                      BlocProvider.of<AddressCubit>(context)
                          .deleteAddress(addressModel.id);
                    },
                    child: SizedBox(
                      width: 30.sp,
                      height: 30.sp,
                      child: Image.asset(
                        Assets.images.deleteFrame.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.location_pin, color: ColorName.mintGreen, size: 20.sp),
              const SizedBox(width: 15),
              // Expanded ensures the address text fits within the row and doesn't overflow
              Expanded(
                child: Text(
                  '${addressModel.street} - ${addressModel.city} - ${addressModel.region}',
                  style: AppTextStyles.kBlack12FontW400,
                  overflow:
                      TextOverflow.ellipsis, // Handle long addresses gracefully
                ),
              ),
            ],
          ),
          if (addressModel.isDefault == 'غير افتراضي')
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20, end: 140.sp),
              child: CustomButton(
                height: 40.sp,
                onTap: onTap,
                boarderRadius: 5.r,
                color: ColorName.lightgreen,
                child: Row(
                  children: [
                    Container(
                      width: 20.sp,
                      height: 20.sp,
                      margin: EdgeInsets.symmetric(horizontal: 5.sp),
                      color: Colors.white,
                      child: Image.asset(Assets.images.checkArrow.path),
                    ),
                    SizedBox(width: 5.sp),
                    // Expanded ensures the button text fits within the available space
                    Expanded(
                      child: GestureDetector(
                        child: Text(
                          "set_address_as_default".tr,
                          style: AppTextStyles.kBlack10FontW400,
                          overflow: TextOverflow.ellipsis, // Handle long text
                        ),
                        onTap: () {
                          BlocProvider.of<AddressCubit>(context)
                              .setAddressAsDefault(addressModel.id);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
