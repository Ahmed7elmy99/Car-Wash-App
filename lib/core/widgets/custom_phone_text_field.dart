/*
created by : Mohamed waleed 
edited by : Mohamed Waleed
edited at : 16/10/2024
edits : 
change the sizes for making it responsive on different screens sizes

editedby : Mohamed Waleed 
editedat : 19/10/2024
edits :
give style to text style to search and texts in the dialog
make it responsive to all screens sizes
 */

import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/validator_utils.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class CustomPhoneTextField extends StatefulWidget {
  final bool isLabeled; // Determines if the text field should display a label.
  final TextEditingController?
      controller; // Controller for managing text input.
  final void Function(CountryCode?)?
      onInit; // Callback function when initializing the country code picker.

  const CustomPhoneTextField({
    this.controller,
    this.isLabeled = false,
    this.onInit,
    super.key,
  });

  @override
  State<CustomPhoneTextField> createState() => _CustomPhoneTextFieldState();
}

class _CustomPhoneTextFieldState extends State<CustomPhoneTextField> {
  bool isTextFieldFocused = false; // Tracks if the text field is focused.
  String? countryCode; // Stores the currently selected country code.
  bool isValid = true; // Tracks if the phone number entered is valid.
  bool _hasValidationError = false;
  String? _errorMessage;
  // Helper method to build the border for the text field.
  InputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: Get.locale!.languageCode == "en"
          ? BorderRadius.only(
              topLeft: Radius.circular(6.r),
              bottomLeft: Radius.circular(6.r),
            )
          : BorderRadius.only(
              topRight: Radius.circular(6.r),
              bottomRight: Radius.circular(6.r),
            ),
      borderSide: BorderSide(color: color ?? Colors.grey.shade200),
    );
  }

  // Responsive padding based on screen width
  EdgeInsetsDirectional get _adaptivePadding {
    double width = MediaQuery.of(context).size.width;

    if (AppScreenUtils.isTablet) {
      // For tablets and larger devices
      return EdgeInsetsDirectional.symmetric(vertical: 2.h);
    } else if (width >= 400) {
      // For larger phones
      return EdgeInsetsDirectional.symmetric(vertical: 3.h);
    } else {
      // For smaller phones
      return EdgeInsetsDirectional.symmetric(vertical: 2.5.h);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              flex: 4,
              child: TextFormField(
                //Validator to check if the input is valid.
                validator: (value) {
                  if (value?.isEmpty ?? true) {
                    setState(() {
                      _hasValidationError = true;
                      _errorMessage = "field_can't_be_empty".tr;
                    });
                    return "";
                  } else {
                    String? validationResult =
                        Validators.phoneNumberValidator(value);
                    setState(() {
                      _hasValidationError = validationResult != null;
                      _errorMessage = validationResult;
                    });
                    return _errorMessage;
                  }
                },

                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly
                ], // Ensures only digits are allowed.
                keyboardType: TextInputType.number,
                controller: widget
                    .controller, // Assigns the controller for managing input.
                cursorColor: ColorName.green, // Sets the cursor color.
                style: AppTextStyles.kBlack11FontW400,
                decoration: InputDecoration(
                  errorStyle: const TextStyle(fontSize: 0),

                  //added padding in the start because of removing hint country code
                  contentPadding:
                      EdgeInsetsDirectional.only(end: 15.w, start: 11.w),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 45.w,
                    minHeight: 55.h,
                    maxWidth: 45.w,
                    maxHeight: 55.h,
                  ),
                  prefixIcon: Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: AppScreenUtils.isTablet ? 8.w : 4.w,
                      bottom: AppScreenUtils.isTablet ? 8.w : 4.w,
                      start: 12.w,
                      end: 12.w,
                    ),
                    child: Container(
                      child: Assets.images.phoneIcon.svg(),
                    ), // Displays the phone icon.
                  ),
                  // errorStyle: MyStyles.font15RedW700,
                  enabledBorder: buildBorder(),
                  focusedBorder: buildBorder(),
                  // Red border for error state.
                  errorBorder: buildBorder(color: ColorName.redColor),
                  focusedErrorBorder: buildBorder(color: ColorName.redColor),
                  hintStyle: AppTextStyles.kGrey15WithOpacity10FontInterW400,
                  // Placeholder hint text for phone number.
                  hintText: "202-555-0877",
                ),
                // style: MyStyles.kFont18BlackW400,
              ),
            ),
            Expanded(
              flex: 1,
              child: AnimatedContainer(
                padding: _adaptivePadding,
                duration: const Duration(milliseconds: 100),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: !_hasValidationError
                        ? Colors.grey.shade200
                        : ColorName.redColor,
                  ),
                  borderRadius: BorderRadiusDirectional.horizontal(
                    end: Radius.circular(6.r),
                  ),
                ),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.black,
                            size: 25.sp,
                          ),
                          Text(
                            countryCode ?? "+966",
                            style: AppTextStyles.kBlack12InterFontW500,
                          ),
                        ],
                      ),
                    ),
                    CountryCodePicker(
                      //added favourite countries to be shown on the top of the dialog
                      favorite: const ["SA"],
                      showDropDownButton: false,
                      dialogTextStyle: AppTextStyles.kBlack12FontW400,
                      searchStyle: AppTextStyles.kBlack12FontW400,
                      onInit: widget.onInit ??
                          (country) {
                            // Initializes the country code if no callback is provided.
                            countryCode = country!.dialCode;
                          },
                      closeIcon: Icon(
                        Icons.close_rounded,
                        color: Colors.black,
                        size: 24.sp,
                      ),
                      emptySearchBuilder: (context) => Center(
                        child: Text(
                          "no_country_found".tr,
                          style: AppTextStyles.kBlack12FontW400,
                        ),
                      ),
                      // Triggered when the country code changes.
                      onChanged: (value) {
                        setState(() {
                          countryCode = value.dialCode;
                        });
                        widget.onInit!(value);
                      },
                      textStyle: AppTextStyles.kBlack12InterFontW500
                          .copyWith(fontSize: 0),
                      initialSelection:
                          "SA", // Initial country selection for the picker.
                      showCountryOnly: false,
                      showFlag: false, // Flag is hidden in the UI.
                      showFlagDialog: false,
                      alignLeft: false,
                      flagWidth: 20.w,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        if (_hasValidationError && _errorMessage != null)
          Padding(
            padding: EdgeInsets.only(top: 4.h),
            child: Text(
              _errorMessage!,
              style: AppTextStyles.kRed11FontW400,
            ),
          ),
      ],
    );
  }
}
