import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/cubit/add_new_address_cubit.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/screens/addresses_screen.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class ButtonConfirmAddress extends StatelessWidget {
  final TextEditingController nameAddressController;
  final TextEditingController cityController;
  final TextEditingController regionController;
  final TextEditingController streetController;
  final TextEditingController neighborhoodController;
  final AddressModel? addressModel;
  final bool? edit;

  const ButtonConfirmAddress({
    super.key,
    required this.nameAddressController,
    required this.cityController,
    required this.regionController,
    required this.streetController,
    required this.neighborhoodController,
    this.addressModel,
    this.edit,
  });

  @override
  Widget build(BuildContext context) {
    AddNewAddressCubit cubit = BlocProvider.of<AddNewAddressCubit>(context);
    return CustomButton(
      boarderRadius: 10.r,
      child: BlocConsumer<AddNewAddressCubit, AddNewAddressState>(
        listener: (context, state) {
          if (state is AddNewAddressSuccess) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('success'.tr),
                  content: Text(
                    edit == true
                        ? "address_update_successfully".tr
                        : 'address_added_successfully'.tr,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        // Close the dialog and navigate to AddressesScreen
                        Navigator.of(context).pop(); // Close the dialog
                        context.pushReplacementNamed(
                            AddressesScreen.id); // Navigate to AddressesScreen
                      },
                      child: Text("continue".tr),
                    ),
                  ],
                );
              },
            );
          }
          if (state is AddNewAddressFailure) {
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 14.h),
            child: state is AddNewAddressLoading
                ? Center(
                    child: SizedBox(
                      height: 22.h,
                      width: 22.h,
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Assets.images.rightArrowDashed
                          .svg(fit: BoxFit.cover, width: 12.sp, height: 16.sp),
                      SizedBox(width: 10.sp),
                      Text(
                        "confirm_address".tr,
                        style: AppTextStyles.kWhite15FontW700,
                      ),
                    ],
                  ),
          );
        },
      ),
      onTap: () {
        if (edit == true) {
          cubit.updateAddress(
            id: addressModel!.id,
            nameAddress: nameAddressController.text,
            city: cityController.text,
            region: regionController.text,
            street: streetController.text,
            neighborhood: neighborhoodController.text,
          );
        } else if (edit == false) {
          cubit.addNewAddress(
            nameAddress: nameAddressController.text,
            city: cityController.text,
            region: regionController.text,
            street: streetController.text,
            neighborhood: neighborhoodController.text,
          );
        }
      },
    );
  }
}
