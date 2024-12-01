import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/add_new_address/presentation/screens/add_new_address_screen.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/location_widget.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 31/10/2024
// Edit Note: import flutter bloc package
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart'; // Add the shimmer package

class AddressDropdownWidget extends StatefulWidget {
  const AddressDropdownWidget({super.key});

  @override
  _AddressDropdownWidgetState createState() => _AddressDropdownWidgetState();
}

class _AddressDropdownWidgetState extends State<AddressDropdownWidget> {
  bool isExpanded = false;
  // Edited by: Nadeen Mohamed
  // Edited at date: 31/10/2024
  // Edit note:  Set to an empty string initially
  String selectedAddress = '';
  AddressModel? selectedAddressModel;

  // Edited by: Nadeen Mohamed
  // Edited at date: 31/10/2024
  // Edit note: use productCubit and addressCubit in initState
  @override
  void initState() {
    super.initState();

    // Load addresses and listen for state changes
    final addressCubit = context.read<AddressCubit>();
    addressCubit.getAddresses();

    // Listen for AddressSuccess state to set the default address
    addressCubit.stream.listen((state) {
      // Edited by: Nadeen Mohamed
      // Edited at date: 21/11/2024
      // Edite note: check if AddressSuccess and not empty
      if (state is AddressSuccess && state.addresses.isNotEmpty) {
        if (selectedAddressModel == null) {
          setState(() {
            selectedAddressModel = state.addresses.first;
            selectedAddress = selectedAddressModel?.nameAddress ?? '';
            context
                .read<BookingCubit>()
                .updateSelectedAddress(selectedAddressModel!);
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isRtl =
        Get.locale?.languageCode == 'ar' || Get.locale?.languageCode == 'he';

    return BlocBuilder<AddressCubit, AddressState>(
      builder: (context, state) {
        List<AddressModel> addresses = [];

        if (state is AddressSuccess) {
          // Edited by: Nadeen Mohamed
          // Edited at date: 21/11/2024
          // Data has already been successfully loaded
          addresses = state.addresses;
          // Edited by: Nadeen Mohamed
          // Edited at date: 21/11/2024
          // Show the AddressDropdownWidget immediately if addresses are loaded
          if (addresses.isNotEmpty && selectedAddressModel == null) {
            selectedAddressModel = addresses.first;
            selectedAddress = selectedAddressModel?.nameAddress ?? '';
            context
                .read<BookingCubit>()
                .updateSelectedAddress(selectedAddressModel!);
          }
        } else if (state is AddressFailure) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Error loading addresses: ${state.error.statusMessage}".tr,
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 24/11/2024
                  // Edite note: use redColor from generated ColorName
                  style: const TextStyle(color: ColorName.redColor),
                ),
                ElevatedButton(
                  onPressed: () {
                    context.read<AddressCubit>().getAddresses();
                  },
                  child: Text('Retry'.tr),
                ),
              ],
            ),
          );
        } else if (state is AddreessLoading) {
          return _buildShimmerEffect(); // Show shimmer effect while loading
        }

        return Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      icon: isExpanded
                          ? Icon(Icons.keyboard_arrow_up, size: 30.r)
                          : Icon(Icons.keyboard_arrow_down, size: 30.r),
                    ),
                    Text(
                      selectedAddress,
                      style: AppTextStyles.kBlack12FontW700,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      // Edited by: Nadeen Mohamed
                      // Edited at date: 31/10/2024
                      // Edit note: use GestureDetector to navigate to add new address screen
                      child: GestureDetector(
                        onTap: () async {
                          final AddressModel? newAddress = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddNewAddressScreen(),
                            ),
                          );

                          if (newAddress != null) {
                            setState(() {
                              selectedAddress = newAddress.nameAddress;
                              addresses.add(newAddress);
                            });
                            // Edited by: Nadeen Mohamed
                            // Edited at date: 21/11/2024
                            // Edite note: get All Addresses
                            context.read<AddressCubit>().getAddresses();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.zero,
                          width: 20.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0.sp),
                            color: ColorName.lightMintGreenColor,
                          ),
                          child: Icon(Icons.add, size: 20.r),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  // Edited by: Nadeen mohamed
                  // Edited at date: 31/10/2024
                  // Edit note: use variables in LocationWidget
                  child: LocationWidget(
                    neighborhood: selectedAddressModel?.neighborhood ?? '',
                    street: selectedAddressModel?.street ?? '',
                    city: selectedAddressModel?.city ?? '',
                  ),
                ),
                SizedBox(height: 24.h),
                 // Edited by: Nadeen Mohamed
                // Edited at date: 3/11/2024
                // Edit note: remove chooseTimeRow and add it in orderServiceBody
              ],
            ),
            if (isExpanded)
              Positioned(
                top: MediaQuery.of(context).size.height * 0.05,
                left: isRtl ? null : 30.w,
                right: isRtl ? 30.w : null,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  decoration: BoxDecoration(
                    color: ColorName.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6.r),
                      bottomRight: Radius.circular(6.r),
                    ),
                    border: Border(
                      top: BorderSide(color: ColorName.mintGreen, width: 1.h),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: addresses.map((address) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedAddress = address.nameAddress;
                              selectedAddressModel = address;
                              isExpanded = false;
                            });
                            context
                                .read<BookingCubit>()
                                .updateSelectedAddress(address);
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 16.w),
                            child: Text(
                              address.nameAddress,
                              style: AppTextStyles.kBlack10Font700,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
  
  // Edited by: Nadeen Mohamed
  // Edited at date: 21/11/2024
  // Edite note: add shimmer effect
  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Column(
        children: List.generate(3, (index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
          );
        }),
      ),
    );
  }
}
