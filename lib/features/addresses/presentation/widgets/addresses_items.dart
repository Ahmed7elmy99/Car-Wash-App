import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/features/addresses/logic/entity/address_options.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/cubit/address_cubit.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/widgets/address_shimmer.dart';
import 'package:car_wash_mobile_app/features/addresses/presentation/widgets/custom_address_radio%20button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//Edit By : Abdullah Ghaith
//Edit Date : 28/10/2024

/*
edited by : Mohamed Waleed
edited at : 19/10/2024
edits : 
convert the key to super parameter
add messing constant
 */
class AddressesItems extends StatefulWidget {
  const AddressesItems({
    super.key,
  });

  @override
  _AddressesItemsState createState() => _AddressesItemsState();
}

class _AddressesItemsState extends State<AddressesItems> {
  AddressesMethodChoices? selectedChoice;
  List<AddressModel> addresses = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<AddressCubit>(context).getAddresses();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().screenHeight * 0.622, // Set appropriate height
      child: Column(
        children: [
          Flexible(
            child: BlocBuilder<AddressCubit, AddressState>(
              builder: (context, state) {
                if (state is AddreessLoading) {
                  return Column(
                    children: List.generate(
                      2, // Adjust the number of shimmer items as needed
                      (_) => const CustomRadioButtonShimmer(),
                    ),
                  );
                } else if (state is AddressFailure) {
                  return AlertDialog(
                    title: const Text('Error'),
                    content:
                        Text(state.error.statusMessage ?? 'An error occurred'),
                  );
                } else if (state is AddressSuccess) {
                  addresses = state.addresses;
                }

                return addresses.isEmpty
                    ? const Center(child: Text('No addresses found.'))
                    : ListView.separated(
                        itemCount: addresses.length,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 18),
                        itemBuilder: (BuildContext context, int index) {
                          return CustomRadioButton(
                            addressModel: addresses[index],
                            onTap: () {},
                          );
                        },
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
