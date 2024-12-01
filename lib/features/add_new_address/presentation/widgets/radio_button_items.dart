// import 'package:car_wash_mobile_app/features/add_new_address/data/models/addnewAddressoptions.dart';
// import 'package:car_wash_mobile_app/features/add_new_address/presentation/widgets/custom_radio_button.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';

// class AddnewAddressitems extends StatefulWidget {
//   final AddNewAddressMethodChoices value;

//   const AddnewAddressitems({
//     super.key,
//     required this.value,
//   });

//   @override
//   State<AddnewAddressitems> createState() => _addnewAddressitemsState();
// }

// class _addnewAddressitemsState extends State<AddnewAddressitems> {
//   AddNewAddressMethodChoices? selectedChoice;
//   @override
//   void initState() {
//     super.initState();
//     selectedChoice = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           height: 18.sp,
//         ),
//         CustomAddNewRadioButton(
//           isSelected: selectedChoice ==
//               AddNewAddressMethodChoices.add_new_address_item1,
//           label: 'work_address'.tr,
//           onTap: () {
//             setState(() {
//               selectedChoice = AddNewAddressMethodChoices.add_new_address_item1;
//             });
//           },
//         ),
//         SizedBox(height: 10.sp),
//         CustomAddNewRadioButton(
//           isSelected: selectedChoice ==
//               AddNewAddressMethodChoices.add_new_address_item2,
//           label: "home_address".tr,
//           onTap: () {
//             setState(() {
//               selectedChoice = AddNewAddressMethodChoices.add_new_address_item2;
//             });
//           },
//         ),
//       ],
//     );
//   }
// }
