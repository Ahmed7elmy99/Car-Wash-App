// /*
// edited by : Mohamed Waleed
// edited at : 21/10/2024
// edits :
// -make the radio button to be more bigger on tablet
// -make the whole ListTile to be tabbed 
//   to choose between payement gateways or cash
// */
// import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
// import 'package:car_wash_mobile_app/core/utils/app_utils.dart';
// import 'package:car_wash_mobile_app/features/payment/presentation/payment_cubit/payment_cubit.dart';
// import 'package:car_wash_mobile_app/gen/colors.gen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// import '../../data/models/payment_options.dart';

// class PaymentMethodsList extends StatefulWidget {
//   ///show a list with available payment methods to choose from pay on arrival or Bank payment
//   const PaymentMethodsList({
//     super.key,
//   });

//   @override
//   State<PaymentMethodsList> createState() => _PaymentMethodsListState();
// }

// class _PaymentMethodsListState extends State<PaymentMethodsList> {
//   @override
//   Widget build(BuildContext context) {
//     PaymentCubit cubit = BlocProvider.of<PaymentCubit>(context);
//     return Padding(
//       padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 12.h),
//       child: Container(
//         decoration: BoxDecoration(
//           color: ColorName.lightMintGreenColor,
//           borderRadius: BorderRadius.circular(14.r),
//         ),
//         child: Column(
//           children: [
//             GestureDetector(
//               onTap: () {},
//               child: ListTile(
//                 tileColor: Colors.transparent,
//                 leading: Transform.scale(
//                   // make check if the screen size is for tablet then make the size of radio button
//                   //more bigger
//                   scale: AppScreenUtils.isTablet ? 1.6 : 1.2,
//                   child: Radio<PaymentMethodChoices>(
//                     activeColor: ColorName.mainGreenColor,
//                     groupValue: BlocProvider.of<PaymentCubit>(context)
//                         .paymentMethodChoice,
//                     value: PaymentMethodChoices.onArrivalPayment,
//                     onChanged: (value) {
//                       setState(
//                         () {
//                           BlocProvider.of<PaymentCubit>(context).chosenWay =
//                               value!;
//                         },
//                       );
//                     },
//                   ),
//                 ),
//                 title: Text(
//                   "pay_on_arrival".tr,
//                   style: AppTextStyles.kBlack15FontW400,
//                 ),
//                 subtitle: Text(
//                   "pay_on_arrival_description".tr,
//                   style: AppTextStyles.kGery12WithOpacity50FontW400,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
