import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/widgets/add_new_address_button.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/widgets/addresses_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

//Edit By : Abdullah Ghaith
//Edit Date : 14/10/2024
//Edit Note : Added AddressesScreen widget to display the addresses screen
class AddressesScreen extends StatefulWidget {
  static const String id = '/AddressesScreen';
  const AddressesScreen({super.key});
  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddressCubit>(context).getAddresses();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      onRefresh: () async {
        BlocProvider.of<AddressCubit>(context).getAddresses();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.sp),
                    child: const CustomBackButton(),
                  ),
                  Text(
                    "my_address".tr,
                    style: AppTextStyles.kBlack20FontW700,
                  ),
                  SizedBox(height: 33.sp),
                  const AddressesItems(),

                  // Spacer to push the button to the bottom
                  const Spacer(),

                  // Button at the bottom
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 33.sp),
                      child: const AddNewAddressButton()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
