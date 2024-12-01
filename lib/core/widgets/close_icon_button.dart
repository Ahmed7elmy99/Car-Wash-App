import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CloseIconButton extends StatelessWidget {
  const CloseIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.close_rounded,
        size: 24.sp,
      ),
      onPressed: () {
        //edited by : waleed
        //edited at : 21/10/2024
        //edits : convert Navigator to context of GoRoute
        context.pop();
      },
    );
  }
}
