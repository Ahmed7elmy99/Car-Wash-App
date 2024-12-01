/*
created by : Mohamed Waleed
created at : 14/10/2024
edited by : Mohamed waleed
edited at : 16/10/2024
edits :
remove tha bottom paddin from the packages list and remove the bug of (conflic between paddin and the packages list)
is used to show the available packages for the user
 */

import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/package_expansion_widget.dart';
import 'package:car_wash_mobile_app/features/profile/presentation/widgets/user_package_expansion_shimmer.dart';
import 'package:car_wash_mobile_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// [PackagesList] is a widget that displays the available packages for the user.
class PackagesList extends StatefulWidget {
  const PackagesList({super.key});

  @override
  State<PackagesList> createState() => _PackagesListState();
}

class _PackagesListState extends State<PackagesList> {
  late PackagesCubit packagesCubit;
  @override
  void initState() {
    super.initState();
    packagesCubit = PackagesCubit.get(context);
  }

  @override

  /// Builds the UI for displaying the available packages.
  ///
  /// This widget renders a list of package cards inside a [Padding] widget
  /// with directional padding applied to the top, start, and end.
  /// It uses a [BlocConsumer] to listen to the state changes in [PackagesCubit].
  ///
  /// - If the state is [PackagesLoading] or [PackagesFailure], it displays a shimmer effect
  ///   using [UserPackageExpansionShimmer].
  /// - Otherwise, it creates a [ListView] of packages, each represented by a card with
  ///   rounded corners and a shadow effect. The card includes a [UserPackageExpansionWidget]
  ///   that shows the details of the package.
  ///
  /// The [ListView] is non-scrollable due to [NeverScrollableScrollPhysics] and the
  /// number of packages is determined by the length of [packageList].
  Widget build(BuildContext context) {
    // packagesCubit.getAllPlans();
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: 21.h, // Padding at the top of the list
        start: 20.w, // Padding on the left
        end: 21.w, // Padding on the right
      ),
      child: BlocConsumer<PackagesCubit, PackagesState>(
        listener: (context, state) {
          if (state is PackagesFailure) {
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          if (state is PackagesLoading || state is PackagesFailure) {
            return const UserPackageExpansionShimmer();
          } else {
            return ListView.builder(
              itemCount: packagesCubit.packageList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    bottom: 19.h, // Bottom padding is maintained for spacing
                  ),
                  decoration: BoxDecoration(
                    color: ColorName
                        .lightMintGreenColor, // Background color of the package card
                    borderRadius: BorderRadius.circular(8.r), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.07),
                        blurRadius: 10.r,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  // The UserPackageExpansionWidget displays the package details
                  child: UserPackageExpansionWidget(
                    initiallyExpanded: true,
                    packageModel: packagesCubit.packageList[index],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
