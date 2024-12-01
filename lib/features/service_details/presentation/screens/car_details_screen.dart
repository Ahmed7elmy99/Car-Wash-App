import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/car_details_cubit/car_details_cubit.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/custom_profile_car_details.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/custom_text_car_details.dart';
import 'package:car_wash_mobile_app/features/service_details/presentation/widets/custom_text_form_feild_for_car_color.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../widets/button_confirm_details.dart';
import '../widets/car_type_drop_down_text_form_feild.dart';

// start: Edited by helmy
//Edit At Date (19/10/2024)

class CarDetailsScreen extends StatefulWidget {
  static const String id = '/carDetailsScreen';
  const CarDetailsScreen({super.key});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  // Added a state variable to store the selected color for the car.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        // Unchanged
        appBar: AppBar(
          scrolledUnderElevation: 0, // Unchanged
          backgroundColor: Colors.transparent, // Unchanged
          elevation: 0, // Unchanged
          leading: SizedBox(
              width: 24.w, height: 24.h, child: const CustomBackButton()),
        ),
        body: BlocProvider(
            create: (context) => CarDetailsCubit(),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: constraints.maxHeight), // Unchanged
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          SizedBox(height: 10.h), // Unchanged
                          const CustomTextCarDetails(),
                          SizedBox(height: 57.h), // Unchanged
                          const CustomProfileCarDetails(),
                          SizedBox(height: 24.h), // Unchanged
                          Padding(
                            padding: EdgeInsets.only(
                                right: 28.0.w, left: 18.w), // Unchanged
                            child: Form(
                              key: CarDetailsCubit.get(context).formstate,
                              child: Column(
                                children: [
                                  CustomTextFormField(
                                    validator: (value) {
                                      // Check if carColor is null, then return the validation message.
                                      return null;
                                    },
                                    textEditingController:
                                    CarDetailsCubit.get(context)
                                        .carNumberController,
                                    keyboardType: TextInputType.number,
                                    start: AppScreenUtils.isTablet ? 13.w : 15.w,
                                    label: '${"carNumber".tr}..',
                                    // Unchanged
                                    hintText: "carNumber".tr, // Unchanged
                                    prefixIcon: Padding(
                                      padding: EdgeInsets.only(left: 8.w),
                                      child: Image.asset(
                                        Assets.images.carNumberIcon.path,
                                        fit: BoxFit.contain,
                                        width: 17.11.w,
                                        height: 11.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 16.h), // Unchanged
                                  const CarTypeDropdown(), // Unchanged
                                  SizedBox(height: 17.h),
                                  // Unchanged
                                  const CustomTextFormFeildForCarColor()
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 50.h,
                            ),
                          ),
                          const Spacer(), // Unchanged
                          const ButtonConfirmDetails()
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
     )
    );
  }
}