import 'package:flutter/material.dart';



class CustomTextFieldSix extends StatelessWidget {
  String childText;
  var keyboardType;
  Icon prefixIcon;
  TextEditingController controller;

  CustomTextFieldSix({
    Key? key,
    required this.childText,
    required this.keyboardType,
    required this.controller,
    required this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is empty';
        }
        return null;
      },
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        fillColor: Colors.white,
        filled: true,
        hintText: childText,
        prefixIcon: prefixIcon,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
