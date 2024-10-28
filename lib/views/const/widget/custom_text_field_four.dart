import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextFieldFour extends StatefulWidget {
  TextEditingController controller;
   CustomTextFieldFour({Key? key, required this.controller,}) : super(key: key);

  @override
  State<CustomTextFieldFour> createState() => _CustomTextFieldFourState();
}

class _CustomTextFieldFourState extends State<CustomTextFieldFour> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(10.r),
      // ),
      child: Center(
        child: TextFormField(
          controller: widget.controller,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field is empty';
            }
            return null;
          },
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.r)
            ),
            fillColor: Colors.white,
            filled: true,
            hintStyle: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
