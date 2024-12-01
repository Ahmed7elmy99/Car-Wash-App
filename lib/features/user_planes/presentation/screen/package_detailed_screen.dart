
import 'package:car_wash_mobile_app/core/models/my_plans/user_plans_model.dart';
import 'package:car_wash_mobile_app/core/widgets/custom_back_button.dart';
import 'package:car_wash_mobile_app/features/user_planes/data/model/single_plan_info_model.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/cubits/packages_cubit/packages_cubit.dart';
import 'package:car_wash_mobile_app/features/user_planes/presentation/widgets/package_detailed_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PackageDetailedScreen extends StatefulWidget {
  const PackageDetailedScreen(
      {super.key, required this.packageModel, required this.cubit});
  static String id = "/PackageDetailedScreen";

  final UserPlansModel packageModel;

  final PackagesCubit cubit;

  @override
  State<PackageDetailedScreen> createState() => _PackageDetailedScreenState();
}

class _PackageDetailedScreenState extends State<PackageDetailedScreen> {
  late final cubit = PackagesCubit.get(context);
  SinglePlanInfoModel? model;
  @override
  void initState() {
    super.initState();
    cubit.getUserPlanInfo(id: widget.packageModel.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
        scrolledUnderElevation: 0,
      ),
      body: SafeArea(
          child: BlocConsumer<PackagesCubit, PackagesState>(
        listener: (context, state) {
          if (state is PlanInfoError) {
            state.error.showError(context);
          }
        },
        builder: (context, state) {
          if (state is PlanInfoSuccess) {
            model = state.plan;
          } else if (state is PlanInfoLoading) {
            return const Center(child:  CircularProgressIndicator());
          }
          if (model == null) {
            return const Text("data");
          }
          return PackageDetailedScreenBody(packageModel: model!);
        },
      )),
    );
  }
}
