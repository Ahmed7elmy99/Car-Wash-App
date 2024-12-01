import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/widgets/custom_text_form_field.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomInputFormFields extends StatelessWidget {
  final AddressModel? addressModel;
  final TextEditingController nameOfTheAddressController;
  final TextEditingController cityTextController;
  final TextEditingController regionTextController;
  final TextEditingController streetTextController;
  final TextEditingController neighborhoodTextController;

  // Edited
  const CustomInputFormFields({
    super.key,
    this.addressModel,
    required this.nameOfTheAddressController,
    required this.cityTextController,
    required this.regionTextController,
    required this.streetTextController,
    required this.neighborhoodTextController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
            textEditingController: nameOfTheAddressController,
            hintText: 'address_name'.tr,
            hintTextStyle: AppTextStyles.kDarkGery11W400,
            prefixIcon: ImageIcon(
              AssetImage(Assets.images.addressLabel1.path),
              size: 16.sp,
              color: ColorName.mintGreen,
            ),
            label: 'address_name'.tr),
        SizedBox(
          height: 11.sp,
        ),
        // AddAddressDropdown(
        //   selectedCity: cityTextController.text,
        // ),
        CustomTextFormField(
            textEditingController: cityTextController,
            hintText: 'city'.tr,
            hintTextStyle: AppTextStyles.kDarkGery11W400,
            prefixIcon: ImageIcon(
              AssetImage(Assets.images.addressLabel1.path),
              size: 16.sp,
              color: ColorName.mintGreen,
            ),
            label: 'city'.tr),
        SizedBox(
          height: 11.sp,
        ),
        CustomTextFormField(
            textEditingController: regionTextController,
            hintText: 'area'.tr,
            hintTextStyle: AppTextStyles.kDarkGery11W400,
            prefixIcon: ImageIcon(
              AssetImage(Assets.images.addressLabel1.path),
              size: 16.sp,
              color: ColorName.mintGreen,
            ),
            label: 'area'.tr),
        SizedBox(
          height: 11.sp,
        ),
        CustomTextFormField(
            textEditingController: neighborhoodTextController,
            hintText: 'neighborhood'.tr,
            hintTextStyle: AppTextStyles.kDarkGery11W400,
            prefixIcon: ImageIcon(
              AssetImage(Assets.images.addressLabel1.path),
              size: 16.sp,
              color: ColorName.mintGreen,
            ),
            label: 'neighborhood'.tr),
        SizedBox(
          height: 11.sp,
        ),

        CustomTextFormField(
            textEditingController: streetTextController,
            hintText: 'street'.tr,
            hintTextStyle: AppTextStyles.kDarkGery11W400,
            prefixIcon: ImageIcon(
              AssetImage(Assets.images.addressLabel1.path),
              size: 16.sp,
              color: ColorName.mintGreen,
            ),
            label: 'street'.tr),
        SizedBox(
          height: 11.sp,
        ),
      ],
    );
  }
}
