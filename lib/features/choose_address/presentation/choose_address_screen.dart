import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_button.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_progress_indicator.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/choose_address/presentation/widgets/address_item.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ChooseAddressScreen extends StatefulWidget {
  static const id = '/ChooseAddressScreen';
  const ChooseAddressScreen({super.key, required this.onTap});
  final Function(AddressModel address) onTap;

  @override
  State<ChooseAddressScreen> createState() => _ChooseAddressScreenState();
}

class _ChooseAddressScreenState extends State<ChooseAddressScreen> {
  List<AddressModel> addresses = [];
  AddressModel? selectedAddress;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddressCubit>(context).getAddresses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        leading: CustomBackButton(),
      ),
      body: SafeArea(child: BlocBuilder<AddressCubit, AddressState>(
        builder: (context, state) {
          if (state is AddressFailure) {
            Get.snackbar('Error', state.error.toString());
          } else if (state is AddreessLoading) {
            return const Center(
              child: CustomProgressIndicator(),
            );
          } else if (state is AddressSuccess) {
            addresses = state.addresses;
          }
          return BlocBuilder<AddressCubit, AddressState>(
            builder: (context, state) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: addresses.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 5,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return AddressItem(
                          address: addresses[index],
                          onTap: () {
                            selectedAddress = addresses[index];
                            setState(() {});
                          },
                          isselected: selectedAddress == addresses[index],
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: CustomButton(
                      boarderRadius: 10,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 14.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          textDirection: Get.locale == const Locale('en')
                              ? TextDirection.rtl
                              : TextDirection.ltr,
                          children: [
                            Text(
                              "confirm_address".tr,
                              style: AppTextStyles.kWhite15FontW700,
                            ),
                            SizedBox(width: 10.sp),
                          ],
                        ),
                      ),
                      onTap: () {
                        if (selectedAddress == null) {
                          showTopSnackBar(
                            Overlay.of(context),
                            CustomSnackBar.error(
                              message: "please_select_an_address".tr,
                            ),
                          );
                        } else {
                          widget.onTap(selectedAddress!);
                        }
                      },
                    ),
                  ),
                ],
              );
            },
          );
        },
      )),
    );
  }
}
