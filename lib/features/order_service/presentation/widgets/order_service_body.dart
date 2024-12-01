// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/address/address_model.dart';
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/booking_cubit/booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/cubits/create_booking_cubit/create_booking_cubit.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/add_notes_textfield.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/additional_products_container.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/all_branches_widget.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_address.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_date_widget.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_time_listview.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/choose_time_row.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/confirm_reservation_container.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/image_section.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/reservation_type_container.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/service_title_and_communication_containers.dart';
import 'package:car_wash_mobile_app/features/order_service/presentation/widgets/user_cars.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

// Edited by: Nadeen Mohamed
// Edited at date: 15/10/2024
// This widgets contains the body of order service screen
class OrderServiceScreenBody extends StatelessWidget {
  const OrderServiceScreenBody({
    super.key,
    required this.address,
    required this.service,
  });
  // Edited by: Nadeen Mohamed
  // Edited at date: 5/11/2024
  // Edit note: Create AllServicesModel object
  final AllServicesModel service;
  // Edited by: nadeen mohamed
  // Edited at date: 31/10/2024
  // Edit note: create AddressModel
  final AddressModel address;

  @override
  Widget build(BuildContext context) {
    final bookingCubit = context.read<BookingCubit>();
    final bookingState = bookingCubit.state;
    bookingState.service.id = service.id;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomBackButton(),
                GestureDetector(
                    onTap: () {
                      // remove navigate to cart
                    },
                    child: SvgPicture.asset(
                      Assets.images.addIcon.path,
                      width: 25.w,
                      height: 25.h,
                    )),
              ],
            ),
          ),
          // Edited by: Nadeen Mohamed
          // Edited at date: 17/10/2024
          // Edit note: Add sizedbox
          SizedBox(height: 20.h),
          // Edited by: nadeen
          // Edited at date: 15/10/2024
          // use custom widget for image
          ImageSection(
            // Edited by: Nadeen Mohamed
            // Edited at date: 5/11/2024
            // Edit note: use service image from services
            imageUrl: service.image,
          ),
          SizedBox(
            height: 18.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Edited by: nadeen
              // Edited at date: 15/10/2024
              // use custom widget for service title and commuincation containers
              ServiceTitleAndCommunicationContainers(
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 5/11/2024
                  // Edit note: use service title from services
                  serviceTitle: service.name,
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 5/11/2024
                  // Edit note: display price from service
                  priceAfterDiscount: service.discountValue == null
                      ? service.price
                      : service.discountedPrice,
                  // priceBeforeDiscount: service.discountValue ?? service.price,
                  priceBeforeDiscount:
                      service.discountValue == null ? '' : service.price),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ReservationTypeContainer(
                    value: (val) =>
                        context.read<BookingCubit>().setReservationType(val)),
              ),
              SizedBox(
                height: 22.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'choose_date'.tr, // use translation by nadeen (13/10/2024)
                  style: AppTextStyles.kBlack12FontW700,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const ChooseDateWidget(),
              ),
              SizedBox(
                height: 24.h,
              ),
              // Edited by: nadeen
              // Edited at date: 15/10/2024
              // use custom widget for choosing address

              // Edited by: Nadeen Mohamed
              // Edited at date: 10/11/2024
              // Edite note: Use BookingCubit to check if reservationType is outside or inside
              BlocBuilder<BookingCubit, BookingState>(
                builder: (context, bookingState) {
                  return bookingState.reservationType == 1
                      // Edited by: Nadeen Mohamed
                      // Edited at date: 21/11/2024
                      // Edite note: use const keyword
                      ? const AddressDropdownWidget()
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "select_branch".tr,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              const AllBranchesWidget(),
                              SizedBox(
                                height: 20.h,
                              ),
                            ],
                          ),
                        );
                },
              ),

              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: Use screenUtil
              // Created by: Nadeen Mohamed
              // Created at date: 3/11/2024
              // Use ChooseTimeRow widget here
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ChooseTimeRow(
                  onfinish: (choise) {},
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: ChooseTimeListview(
                  value: (index) {
                    final timeSelectionCubit = context.read<BookingCubit>();
                    timeSelectionCubit.updateTime(index);
                  },
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              // Edited by: Nadeen Mohamed
              // Edited at date: 9/11/2024
              // Edite note: Add Choose car text and add Car DropDown here and remove it from the end
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'choose_car'.tr, // use translation by nadeen (13/10/2024)
                  style: AppTextStyles.kBlack12FontW700,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              // Edited by: Nadeen Mohamed
              // Edited at date: 21/11/2024
              // Edite note: Use const keyword
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CarDropdown(),
              ),
              SizedBox(
                height: 27.h,
              ),
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: Use screenUtil
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'additional_products'
                      .tr, // use translation by nadeen (13/10/2024)
                  style: AppTextStyles.kBlack12FontW700,
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: Use screenUtil
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: AdditionalProductsWidget(
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 5/11/2024
                  // Edit note: use service model
                  service: service,
                ),
              ),
              SizedBox(
                height: 19.h,
              ),
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: Use screenUtil
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const AddNotesTextfield(),
              ),
              // Edited by: nadeen mohamed
              // Edited at date: 17/10/2024
              // Edit note: Use screenUtil
              SizedBox(
                // Edited by: Nadeen Mohamed
                // Edited at date: 5/11/2024
                // Edit note: change the height
                height: 20.h,
              ),
              // Edited by: Nadeen Mohamed
              // Edited at date: 5/11/2024
              // Edit note: add CarDetails to orderServiceScreen
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20),
              //   child: CarDetails(),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20),
              //   child: CarDropdown(),
              // ),
              SizedBox(
                height: 20.h,
              ),

              // Edited by:
            ],
          ),
        ],
      ),
    );
  }
}
