import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/search/searchmodel.dart';
import 'package:flutter/material.dart';

class RecentSearchListTile extends StatelessWidget {
  final String title;
  final String image;
  final SearchModel searchModel;
  const RecentSearchListTile(
      {super.key,
      required this.title,
      required this.image,
      required this.searchModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(left: 0),
        title: Text(title, style: AppTextStyles.kBlack12FontW700),
        leading: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ));
  }
}
