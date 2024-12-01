import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/search/searchmodel.dart';
import 'package:car_wash_mobile_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:car_wash_mobile_app/features/search/presentation/widgets/custom_search_app_bar.dart';
import 'package:car_wash_mobile_app/features/search/presentation/widgets/custom_search_field.dart';
import 'package:car_wash_mobile_app/features/search/presentation/widgets/shimmer_search_item.dart';
import 'package:car_wash_mobile_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatefulWidget {
  static const String id = '/SearchScreen';
  final String searchQuery;
  final SearchModel? searchModel;
  const SearchScreen({super.key, required this.searchQuery, this.searchModel});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.searchQuery != '') {
      BlocProvider.of<SearchCubit>(context).getSearch(widget.searchQuery);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 34.sp),
          child: ListView(
            children: [
              const SearchAppBar(),
              SizedBox(height: 21.h),
              CustomSearchField(searchQuery: widget.searchQuery),
              SizedBox(height: 21.h),
              BlocBuilder<SearchCubit, SearchState>(
                builder: (context, state) {
                  if (state is SearchLoading) {
                    return const ShimmerSearchItem();
                  }
                  if (state is Searchfailure) {
                    return Center(
                      child: Text(
                        'Not Found',
                        style: AppTextStyles.kBlack15FontW700,
                      ),
                    );
                  }
                  if (state is SearchSuccess) {
                    return ListView.builder(
                        itemCount: state.searchList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final item = state.searchList[index];
                          return ListTile(
                            contentPadding: const EdgeInsets.only(left: 0),
                            leading: Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              width: 66.sp,
                              height: 44.sp,
                              child: CachedNetworkImage(
                                fit: BoxFit.contain,
                                imageUrl: item.images,
                                errorWidget: (context, url, error) =>
                                    Image.asset(
                                  Assets.images.calendarPng.path,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            title: Text(
                              item.name,
                              style: AppTextStyles.kBlack12FontW700,
                            ),
                          );
                        });
                  }
                  return Container();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
