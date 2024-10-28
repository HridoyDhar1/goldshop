// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
class CustomContainerTwo extends StatelessWidget {
  Widget? widget;
   CustomContainerTwo({Key? key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 110.h,
      width: double.maxFinite,
      decoration:  BoxDecoration(
          color: AppColor.containerColor,
          borderRadius: BorderRadius.circular(10.w)
      ),
      child: widget,
    );
  }
}
