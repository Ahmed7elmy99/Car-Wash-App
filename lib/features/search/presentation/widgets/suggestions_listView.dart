// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SuggestionsListView extends StatefulWidget {
  final List suggestions;
  final TextEditingController searchController;
  const SuggestionsListView({
    super.key,
    required this.suggestions,
    required this.searchController,
  });

  @override
  State<SuggestionsListView> createState() => _SuggestionsListViewState();
}

class _SuggestionsListViewState extends State<SuggestionsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true, // Make ListView take only the space it needs
      itemCount: widget.suggestions.length,
      itemBuilder: (context, index) {
        return InkWell(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 9.sp, horizontal: 17.sp),
            child: Text(
              widget.suggestions[index],
              style: AppTextStyles.kBlack10Font700,
            ),
          ),
          onTap: () {
            widget.searchController.text = widget.suggestions[index];
            widget.suggestions.clear(); // Clear suggestions on tap
            setState(() {});
          },
        );
      },
    );
  }
}
