import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/app_text_styles.dart';
import '../../../../../gen/colors.gen.dart';
/// Created by Naira Ali
/// [27/10/2024]

class AddToCartButton extends StatefulWidget {
  final String text;
  final bool showImage;
  // created by: Nadeen Mohamed
  // created at date: 5/11/2024
  // creat void function for onTap
  final void Function()? onTap;

  const AddToCartButton({
    super.key,
    required this.text,
    required this.showImage,
    // created by: Nadeen Mohamed
    // created at date: 5/11/2024
    // pass onTap to the constructor
    required this.onTap,
  });

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: 161.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: ColorName.darkBlackColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.r),
            bottomRight: Radius.circular(20.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /**
             * edited image size
             * edited by : naira ali[20/10/2024]
             */
            //  edited by : omnia mohamed[3/11/2024]
            if (widget.showImage)
              SizedBox(
                width: 14.w,
                height: 20.h,
                child: Image.asset(
                  "assets/images/home_icons/add_to_cart_icon.png",
                  fit: BoxFit.fill,
                ),
              ),
            SizedBox(width: 10.w),
            Text(
              widget.text,
              style: AppTextStyles.kWhite12FontW700,
            ),
          ],
        ),
      ),
    );
  }
}
