
import 'package:car_wash_mobile_app/features/service_details/presentation/car_details_cubit/car_details_cubit.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// start: edited by helmy
//Edit At Date (6/11/2024)
//fix all colors and text styles
class CustomProfileCarDetails extends StatelessWidget {
  const CustomProfileCarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = CarDetailsCubit.get(context);

    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        BlocBuilder<CarDetailsCubit, CarDetailsState>(
          builder: (context, state) {
            return SizedBox(
              height: 120.h,
              width: 120.w,
              child: cubit.carImageFile != null
                  ? ClipOval(
                      child: Image.file(
                        cubit.carImageFile!,
                        fit: BoxFit.cover,
                      ),
                    )
                  : CircleAvatar(
                      radius: 60.r,
                      backgroundColor: ColorName.grey.withOpacity(0.02),
                      child: Image.asset(
                        Assets.images.carDetailsImage.path,
                        width: 60.w,
                        height: 60.h,
                        fit: BoxFit.contain,
                      ),
                    ),
            );
          },
        ),
        Positioned(
          bottom: 6.h,
          right: 9.w,
          child: GestureDetector(
            onTap: () {
              cubit.pickImage(); // Call pickImage from cubit
            },
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
