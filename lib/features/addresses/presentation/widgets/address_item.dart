// import 'package:car_wash_mobile_app/features/addresses/models/address_options.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// class AddressItem extends StatefulWidget {
//   final bool checkedValue;
//   final AddressesMethodChoices value;

//   const AddressItem({
//     super.key,
//     required this.checkedValue,
//     required this.value,
//   });

//   @override
//   State<AddressItem> createState() => _AddressItemState();
// }

// class _AddressItemState extends State<AddressItem> {
//   late AddressesMethodChoices? selectedChoice =
//       AddressesMethodChoices.AddressesItem1;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize selectedChoice with the value passed from the widget
//     selectedChoice = widget.value;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         border: Border.all(color: const Color(0xffE8E8E8), width: 1.5),
//       ),
//       child: Row(
//         children: [
//           const Text("Select Radio Button 1 "),
//           Radio<AddressesMethodChoices>(
//             value: AddressesMethodChoices.AddressesItem1,
//             groupValue: selectedChoice, // Use the state variable for tracking
//             onChanged: (AddressesMethodChoices? value) {
//               setState(() {
//                 selectedChoice = value;
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
