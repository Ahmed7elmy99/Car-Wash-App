import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// A text field that can be used to edit user details.
///
/// The [controller] parameter is a [TextEditingController] that is used to
/// control the text being edited.
///
/// The [isPasswordField] parameter is a boolean that indicates whether the
/// text field should be obscure (i.e., a password field).
///
/// The [onSubmitted] parameter is a function that is called when the user
/// submits the edited text.
///
/// The [style] parameter is a [TextStyle] that is used to style the text
/// in the text field.
class EditableUserDetailField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPasswordField;
  final Function(String) onSubmitted;
  final TextStyle style;

  /// Creates a new [EditableUserDetailField].
  ///
  /// The [controller] parameter is a [TextEditingController] that is used to
  /// control the text being edited.
  ///
  /// The [isPasswordField] parameter is a boolean that indicates whether the
  /// text field should be obscure (i.e., a password field).
  ///
  /// The [onSubmitted] parameter is a function that is called when the user
  /// submits the edited text.
  ///
  /// The [style] parameter is a [TextStyle] that is used to style the text
  /// in the text field.
  const EditableUserDetailField({
    super.key,
    required this.controller,
    required this.isPasswordField,
    required this.onSubmitted,
    required this.style,
  });

  @override
  EditableUserDetailFieldState createState() => EditableUserDetailFieldState();
}

class EditableUserDetailFieldState extends State<EditableUserDetailField> {
  bool _isObscure = true;
  void togglePasswordVisibility() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override

  /// Builds a [TextField] widget that can be used to edit user details.
  ///
  /// The [TextField] widget is configured as follows:
  ///
  /// - The [controller] parameter is a [TextEditingController] that is used to
  /// control the text being edited.
  ///
  /// - The [obscureText] parameter is a boolean that indicates whether the
  /// text field should be obscure (i.e., a password field).
  ///
  /// - The [onSubmitted] parameter is a function that is called when the user
  /// submits the edited text.
  ///
  /// - The [decoration] parameter is an [InputDecoration] that is used to
  /// style the text field.
  ///
  /// - The [suffixIcon] parameter is a widget that is displayed at the end of
  /// the text field. If the [isPasswordField] parameter is `true`, the
  /// [suffixIcon] parameter is an [IconButton] that toggles the visibility of
  /// the password.
  ///
  /// - The [style] parameter is a [TextStyle] that is used to style the text
  /// in the text field.
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPasswordField ? _isObscure : false,
      onFieldSubmitted: widget.onSubmitted,
      cursorColor: ColorName.green,
      decoration: InputDecoration(
        //specify the constraints of the prifex icon
        suffixIconConstraints: BoxConstraints(
          minWidth: AppScreenUtils.isTablet ? 20.w : 20.w,
          minHeight: AppScreenUtils.isTablet ? 25.h : 25.h,
          maxWidth: AppScreenUtils.isTablet ? 20.w : 20.w,
          maxHeight: AppScreenUtils.isTablet ? 25.h : 25.h,
        ),

        /// The focused border is a green underline.
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),

        /// The enabled border is a green underline with a circular border
        /// radius.
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.green),
          borderRadius: BorderRadius.circular(5.r),
        ),

        /// The content padding is a horizontal padding of 10.w and a vertical
        /// padding of 5.h.
        contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),

        /// The suffix icon is an [IconButton] that toggles the visibility of
        /// the password if the [isPasswordField] parameter is `true`.

        suffixIcon: widget.isPasswordField
            ? GestureDetector(
                onTap: () {
                  togglePasswordVisibility();
                },
                child: SizedBox(
                  child: _isObscure
                      ? Assets.images.eyeDisabled.svg()
                      : Assets.images.eyeEnabled.svg(),
                ),
              )
            : null,
      ),

      /// The style of the text in the text field is the [style] parameter.
      style: widget.style,
    );
  }
}
