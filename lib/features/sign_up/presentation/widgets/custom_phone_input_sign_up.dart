import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/core/utils/validator_utils.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_textfield.dart';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// start: edited by helmy
//creat At Date (28/10/2024)
//added customphoneinput widget by helmy (28/10/2024)
class CustomPhoneInput extends StatefulWidget {
  const CustomPhoneInput({super.key});

  @override
  _CustomPhoneInputState createState() => _CustomPhoneInputState();
}

class _CustomPhoneInputState extends State<CustomPhoneInput> {
  // String countryCode = '+966'; // Default code for Saudi Arabia

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: (value) => Validators.phoneNumberValidator(value),
      textEditingController: SignupCubit.get(context).mobileController,
      end: 14.w,
      label: "Phone".tr,
      hintText: "000000000000",
      keyboardType: TextInputType.phone,
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 1.w,
            height: 19.h,
            color: ColorName.gainsboro,
          ),
          SizedBox(width: 6.w),
          GestureDetector(
            onTap: () {
              // You can use the onChanged directly in the CountryCodePicker if you don't need this
            },
            child: CountryCodePicker(
              onChanged: (country) {
                setState(() {
                  SignupCubit.get(context).countryCode = country.dialCode ??
                      '+966'; // Update the code when a new country is selected
                });
              },
              initialSelection: 'SA',
              favorite: const ['+966', 'SA'],
              showCountryOnly: false,
              showOnlyCountryWhenClosed: false,
              alignLeft: false,
              showFlag: false,
              textStyle: AppTextStyles.kBlack11FontW400
                  .copyWith(fontFamily: FontFamily.poppins),
            ),
          ),
        ],
      ),
      suffixIconConstraints: BoxConstraints(minWidth: 36.w),
      prefixIcon: Padding(
        padding: EdgeInsets.only(left: 11.w),
        child: Container(
          width: 18.w,
          height: 17.h,
          alignment: Alignment.center,
          child: Transform.scale(
            scale: AppScreenUtils.isTablet ? 1.5 : 1,
            child: Assets.images.phoneIcon.svg(),
          ),
        ),
      ),
    );
  }
}
