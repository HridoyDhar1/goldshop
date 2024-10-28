import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/app_color.dart';

class CustomTextFieldThree extends StatelessWidget {
  String labelText;
  var keyBoardType;
  TextEditingController controller;

  CustomTextFieldThree({
    Key? key,
    required this.labelText,
    required this.keyBoardType,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: TextFormField(
        keyboardType: keyBoardType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'This field is require';
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
            border:
            OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
            prefixIconColor: AppColor.appColor),
      ),
    );
  }
}
