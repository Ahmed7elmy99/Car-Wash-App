// import 'package:flutter/material.dart';
//
// class ShimmerProductsItem extends StatelessWidget {
//   const ShimmerProductsItem({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 105.h,
//           child: ListView.separated(
//               physics: const BouncingScrollPhysics(),
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) => InkWell(
//                 onTap: onTap,
//                 child: SizedBox(
//                   width: 80.w,
//                   height: 105.h,
//                   child: Column(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage:
//                         AssetImage(fastServicesImages[index]),
//                         radius: 35.r,
//                       ),
//                       SizedBox(height: 5.h),
//                       Text(
//                         fastServicesText[index],
//                         style: AppTextStyles.kGray10FontW700,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               separatorBuilder: (context, index) => SizedBox(width: 10.w),
//               itemCount: fastServicesImages.length),
//         ),
//         SizedBox(height: 25.h),
//       ],
//     );
//   }
// }
