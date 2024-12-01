import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/cubit/add_new_address_cubit.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/widgets/custom_input_form_fields.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/widgets/custom_confirm_botton.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/widgets/map_widget.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddNewAddressScreen extends StatefulWidget {
  static const id = '/AddNewAddressScreen';
  // Add a final variable to hold the edit state
  late bool isEdit;
  late AddressModel? addressModel;
  // Update the constructor to include the isEdit parameter
  AddNewAddressScreen({
    super.key,
    this.isEdit = false,
    this.addressModel,
  });

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  final TextEditingController nameOfTheAddressController =
      TextEditingController();

  final TextEditingController cityTextController = TextEditingController();

  final TextEditingController regionTextController = TextEditingController();

  final TextEditingController streetTextController = TextEditingController();

  final TextEditingController neighborhoodTextController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    if (widget.addressModel != null) {
      nameOfTheAddressController.text = widget.addressModel!.nameAddress;
      cityTextController.text = widget.addressModel!.city;
      regionTextController.text = widget.addressModel!.region;
      streetTextController.text = widget.addressModel!.street;
      neighborhoodTextController.text = widget.addressModel!.neighborhood;
    }
    return BlocProvider(
      create: (context) => AddNewAddressCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: ListView(children: [
              const Align(
                alignment: AlignmentDirectional.topStart,
                child: CustomBackButton(),
              ),
              Row(
                children: [
                  Text(
                    widget.isEdit
                        ? 'edit_address'.tr
                        : 'add_address'
                            .tr, // Use the parameter to determine the text
                    style: AppTextStyles.kBlack15FontW700,
                  ),
                  const Spacer(),
                  if (widget.isEdit)
                    GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                              color: ColorName.aliceBlue,
                              borderRadius: BorderRadius.circular(10)),
                          width: 40.sp,
                          height: 40.sp,
                          child: Icon(
                            Icons.add,
                            color: ColorName.black,
                            size: 16.sp,
                          )),
                      onTap: () {
                        widget.isEdit = false;
                        widget.addressModel = null;
                        nameOfTheAddressController.clear();
                        cityTextController.clear();
                        regionTextController.clear();
                        streetTextController.clear();
                        neighborhoodTextController.clear();
                        setState(() {});
                      },
                    )
                ],
              ),
              SizedBox(height: 11.sp),
              const MapWidget(),
              // const Row(
              //   children: [
              // Expanded(
              //   child: AddnewAddressitems(
              //     value: AddNewAddressMethodChoices.add_new_address_item1,
              //   ),
              // ),
              //     CustomAddButton(),
              //   ],
              // ),
              SizedBox(
                height: 11.sp,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2.sp),
                child: CustomInputFormFields(
                  addressModel: widget.addressModel,
                  cityTextController: cityTextController,
                  nameOfTheAddressController: nameOfTheAddressController,
                  neighborhoodTextController: neighborhoodTextController,
                  regionTextController: regionTextController,
                  streetTextController: streetTextController,
                ), // Provide a default value if addressModel is null
              ),
              SizedBox(
                height: 11.sp,
              ),
              // Address Section with light mint green color
              if (widget.isEdit)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorName.lightMintGreenColor,
                  ),
                  width: 345.sp,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 20.sp, horizontal: 20.sp),
                    child: Column(
                      children: [
                        Align(
                          alignment:
                              Locale(Get.locale.toString()).languageCode == 'ar'
                                  ? Alignment.topRight
                                  : Alignment.topLeft,
                          child: Text(
                            'address'.tr,
                            style: AppTextStyles.kBlack12FontW700,
                          ),
                        ),
                        SizedBox(
                          height: 14.5.sp,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              Assets.images.locationIcon.path,
                              fit: BoxFit.cover,
                              width: 20.sp,
                              height: 20.sp,
                            ),
                            SizedBox(
                              width: 4.sp,
                            ),
                            RichText(
                              text: TextSpan(
                                style: AppTextStyles.kBlack12FontW400,
                                children: [
                                  TextSpan(
                                      text: cityTextController.text.isEmpty
                                          ? ''
                                          : '${cityTextController.text} , '),
                                  TextSpan(
                                      text: neighborhoodTextController
                                              .text.isEmpty
                                          ? ''
                                          : '${neighborhoodTextController.text} , '),
                                  TextSpan(
                                      text: regionTextController.text.isEmpty
                                          ? ''
                                          : '${regionTextController.text} , '),
                                  TextSpan(
                                      text: streetTextController.text.isEmpty
                                          ? ''
                                          : streetTextController.text),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.sp,
                        )
                      ],
                    ),
                  ),
                ),
              SizedBox(
                height: 20.sp,
              ),
              ButtonConfirmAddress(
                edit: widget.isEdit,
                nameAddressController: nameOfTheAddressController,
                cityController: cityTextController,
                regionController: regionTextController,
                streetController: streetTextController,
                neighborhoodController: neighborhoodTextController,
                addressModel: widget.addressModel,
              ),
              SizedBox(
                height: 20.sp,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
