import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:car_wash_mobile_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/*
edited by : Mohamed Waleed
edited at :14/10/2024
edits :
- add ); to line 334
- black12FontPoppinsW700 was removed becuase it already exists.
- kBlack25FontW700 , kGrayWithOpacity5015FontW400 were added

edited at : 16/10/2024
edits by : Mohamed Waleed
edits : 
getFontFamily()to check if the locale is arabic or english to return the font family 


edited at : 19/10/2024
edits by : Mohamed Waleed
edits : 

kGrey15WithOpacity10FontInterW400 was added .
kGray10FontW700 changed to 10 from 13

 */

class AppTextStyles {
  /// Returns the font family based on the current locale.
  ///
  /// If the current locale is Arabic, returns [FontFamily.almarai].
  /// Otherwise, returns [FontFamily.poppins].
  static String getFontFamily() {
    return Get.locale!.languageCode == 'ar'
        ? FontFamily.almarai
        : FontFamily.poppins;
  }

  static TextStyle kBlack10Font700 = TextStyle(
    color: ColorName.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kDarkBlueGrey10Font400 = TextStyle(
    color: ColorName.darkBlueGrey,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kInterDarkBlueGrey10Font400 = TextStyle(
    color: ColorName.darkBlueGrey,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.inter,
  );

  static TextStyle kBlack12FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );

  static TextStyle kBlack12FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kWhite12FontW700 = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlueGray12FontW400 = TextStyle(
    color: ColorName.bluegray,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack13FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack14FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kMintGreen14FontW700 = TextStyle(
    color: ColorName.mintGreen,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack14FontW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.5),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack10FontW400 = TextStyle(
    color: ColorName.grey,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kWhite15FontW700 = TextStyle(
    color: Colors.white,
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle klightslategray10interW400 = TextStyle(
    color: ColorName.lightslategray,
    fontFamily: FontFamily.inter,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kBlack15FontW700 = TextStyle(
    color: ColorName.black,
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle kBlack15FontW400 = TextStyle(
    color: ColorName.black,
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kBlack210AlmaraiW400Opacity60 = TextStyle(
    color: ColorName.black.withOpacity(.6),
    fontFamily: FontFamily.almarai,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kBlack13FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack11FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kRed11FontW400 = TextStyle(
    color: ColorName.redColor,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack8FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack25FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack25FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack15FontW600 = TextStyle(
    color: ColorName.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: getFontFamily(),
  );
  static TextStyle kGery11WithOpacity50FontW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.5),
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );

  static TextStyle kGery12WithOpacity50FontW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.5),
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kDarkGery11W400 = TextStyle(
    color: ColorName.darkGreyColor,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );

  static TextStyle kBlack20FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: getFontFamily(),
  );

  static TextStyle kBlack24FontW700 = TextStyle(
    color: ColorName.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );

  static TextStyle kGreen20FontW700 = TextStyle(
    color: ColorName.green,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlue20FontW700 = TextStyle(
    color: ColorName.blue,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack40AntonFontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.anton,
  );

  static TextStyle kWhite40AntonFontW400 = TextStyle(
    color: ColorName.white,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.anton,
  );
  static TextStyle kGreenBlue40AntonFontW400 = TextStyle(
    color: ColorName.lightgreenishblue,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.anton,
  );
  static TextStyle kBlackLight40AntonFontW400 = TextStyle(
    color: ColorName.blacklight,
    fontSize: 40.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.anton,
  );
  static TextStyle kBlack12InterFontW500 = TextStyle(
    color: ColorName.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kBlack15InterFontW500 = TextStyle(
    color: ColorName.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kDarkBrown13InterFontW500 = TextStyle(
    color: ColorName.darkBrown,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.inter,
  );

  static TextStyle kBlack18FontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack10InterFontW400 = TextStyle(
    color: ColorName.black,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kMutedBlue18FontW700 = TextStyle(
    color: ColorName.mutedBlue,
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kWhite18FontW400 = TextStyle(
    color: ColorName.white,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kBlack24InterFontW600 = TextStyle(
    color: ColorName.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kBlack15InterFontW600 = TextStyle(
    color: ColorName.black,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kGreen24InterFontW600 = TextStyle(
    color: ColorName.green,
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.inter,
  );

  static TextStyle kWhite20FontW700 = TextStyle(
    color: ColorName.white,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kWhite14FontW700 = TextStyle(
    color: ColorName.white,
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kWhite13InterFontW400 = TextStyle(
    color: ColorName.white,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.inter,
  );
  static TextStyle kGray15FontW700 = TextStyle(
    color: ColorName.grey, //#131313
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
  );

  ///added by naira [20/10/2024]
  static TextStyle kGray15FontW400 = TextStyle(
    color: ColorName.grey, //#131313
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kGrayWithOpacity5015FontW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.5), //#131313
  );
  static TextStyle kGrey15FontW400 = TextStyle(
    color: Colors.red,
    fontFamily: getFontFamily(),
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kGray10FontW700 = TextStyle(
    color: ColorName.grey, //#131313
    fontFamily: getFontFamily(),
    //changed to 10 from 13
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle kGray60Opacity10FontW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.6), //#131313
    fontFamily: getFontFamily(),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle blackText12FontW700 = TextStyle(
    color: ColorName.blackColor, //141815
    fontFamily: getFontFamily(),
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle blackText16FontW700 = TextStyle(
    color: ColorName.blackColor, //141815
    fontFamily: getFontFamily(),
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle darkBlackText10FontW600 = TextStyle(
    color: ColorName.darkBlackColor, //000000
    fontFamily: getFontFamily(),
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle darkBlackText10FontW400 = TextStyle(
    color: ColorName.darkBlackColor, //000000
    fontFamily: getFontFamily(),
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle greenText14FontW700 = TextStyle(
    color: ColorName.greenColor, //#2B9648
    fontFamily: getFontFamily(),
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle greenText10FontW700 = TextStyle(
    color: ColorName.mainGreenColor, //#029837
    fontFamily: getFontFamily(),
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle black12FontPoppinsW700 = TextStyle(
    color: ColorName.blackColor,
    fontFamily: FontFamily.poppins,
    fontSize: 12.sp,
    //added font weight bold
    fontWeight: FontWeight.w700,
  );
  static TextStyle kBlack20PoppinsFontW700 = TextStyle(
    color: const Color(0xff131313), //#029837
    fontFamily: FontFamily.poppins,
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );
  // start: created by helmy (14/10/2024)
  static TextStyle kGrey12FontW400 = TextStyle(
    color: Colors.grey,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );
  static TextStyle kGrey12InterFontW400 = TextStyle(
    color: Colors.grey[600],
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: FontFamily.inter,
  );
  static TextStyle black12FontPoppinsW600 = TextStyle(
    color: ColorName.blackColor,
    fontFamily: FontFamily.poppins,
    fontWeight: FontWeight.w600,
    fontSize: 12.sp,
  );
  static TextStyle black10InterFontInterW400 = TextStyle(
    color: Colors.black,
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 10.sp,
  );
  static TextStyle black15InterFontInterW600 = TextStyle(
    color: Colors.black,
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w600,
    fontSize: 15.sp,
  );
  static TextStyle black12InterFontInterW400 = TextStyle(
    color: Colors.grey,
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
  static TextStyle kGrey15WithOpacity10FontInterW400 = TextStyle(
    color: ColorName.grey.withOpacity(0.1),
    fontFamily: FontFamily.inter,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
  );
  static TextStyle kWhite15InterFontW600 = TextStyle(
    color: Colors.white,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.inter,
  );

  // Start by: nadeen mohamed
  // Start at date: 20/10/2024
  // Add new text styles
  static TextStyle kBlack16FontW400 = TextStyle(
    color: ColorName.grey,
    fontFamily: getFontFamily(),
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle kGery16FontW400 = TextStyle(
    color: Colors.grey,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: getFontFamily(),
  );

  /// end by nadeen mohamed at date (20/10/2024)
  // Start by: Helmy
  // Start at date: 21/10/2024
  // Add new text styles
  static TextStyle kMainGreenColor25FontW700 = TextStyle(
    color: ColorName.mainGreenColor,
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
    fontFamily: getFontFamily(),
  );
  static TextStyle kGray12FontW700 = TextStyle(
    color: Colors.grey, //#131313
    fontFamily: getFontFamily(),
    //changed to 10 from 13
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle kDarkBlueGrey10FontW400 = TextStyle(
    color: Colors.grey, //#131313
    fontFamily: getFontFamily(),
    //changed to 10 from 13
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle kBlue10FontW700 = TextStyle(
    color: ColorName.blue,
    fontFamily: getFontFamily(),
    //changed to 10 from 13
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle kBlack12FontW300 = TextStyle(
    color: ColorName.black,
    fontSize: 12.sp,
    fontWeight: FontWeight.w300,
    fontFamily: getFontFamily(),
  );
  // End at date: 21/10/2024
}
