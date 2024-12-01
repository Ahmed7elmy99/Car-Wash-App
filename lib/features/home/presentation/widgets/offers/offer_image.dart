import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// creted by Naira Ali [27/10/2024]

class OfferImage extends StatelessWidget {
  const OfferImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsetsDirectional.only(start: 17.w),
        child: SizedBox(
          width: 50.w,
          height: 63.h,
          child: Image.network(
            image,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(
                Icons.broken_image,
                size: 50,
                color: Colors.grey,
              );
            },
          ),
        ));
  }
}
