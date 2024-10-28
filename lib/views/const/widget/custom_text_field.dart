import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  String childText;
  String labelText;
  var keyBoardType;
  Icon prefixIcon;
  TextEditingController controller;

  CustomTextField({
    Key? key,
    required this.childText,
    required this.labelText,
    required this.keyBoardType,
    required this.controller,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
          hintText: childText,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
          prefixIcon: prefixIcon,
          prefixIconColor: AppColor.appColor),
    );
  }
}
