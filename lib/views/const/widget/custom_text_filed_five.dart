import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomTextFieldFive extends StatefulWidget {
  TextEditingController controller;
var keyboardType;
   CustomTextFieldFive({Key? key, required this.controller,required this.keyboardType}) : super(key: key);

  @override
  State<CustomTextFieldFive> createState() => _CustomTextFieldFiveState();
}

class _CustomTextFieldFiveState extends State<CustomTextFieldFive> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
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
          keyboardType: widget.keyboardType,
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
          maxLines: 5,
        ),
      ),
    );
  }
}
