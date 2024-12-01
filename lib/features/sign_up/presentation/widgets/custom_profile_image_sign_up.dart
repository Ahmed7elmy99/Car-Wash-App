//Edited by :  Ahmed Helmy
//created at : 26/10/2024
//it is used to show the profile image and add icon
//chnanged to take image from gallery and store it in imageFile
import 'dart:io';
import 'package:car_wash_mobile_app/features/sign_up/presentation/cubit/signup_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';



class CustomImageProfileSignUP extends StatefulWidget {
  const CustomImageProfileSignUP({super.key});

  @override
  _CustomImageProfileSignUPState createState() =>
      _CustomImageProfileSignUPState();
}

class _CustomImageProfileSignUPState extends State<CustomImageProfileSignUP> {
  // To store the selected image

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.gallery); // Open gallery

    if (pickedFile != null) {
      setState(() {
    SignupCubit.get(context).imageFile = File(pickedFile.path); // Store the selected image file
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        SizedBox(
          height: 120.h,
          width: 120.w,
          child:   SignupCubit.get(context).imageFile != null
              ? ClipOval(
                  // Clip the image in a circular shape
                  child: Image.file(
                      SignupCubit.get(context).imageFile!,
                    fit: BoxFit.cover,
                  ),
                )
              : Assets.images.profileImagePlaceholder
                  .svg(), // Default placeholder
        ),
        Positioned(
          bottom: 6.h,
          right: 9.w,
          child: GestureDetector(
            onTap: _pickImage, // Pick image when the CircleAvatar is tapped
            child: SizedBox(
              width: 28.w,
              height: 28.h,
              child: CircleAvatar(
                radius: 16.r,
                backgroundColor: ColorName.mintGreen,
                child: Icon(
                  Icons.add,
                  color: ColorName.white,
                  size: 20.sp,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
