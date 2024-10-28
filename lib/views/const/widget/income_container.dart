import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IncomeContainer extends StatelessWidget {
  final firstText;
  final secondText;
   IncomeContainer({super.key, required this.firstText, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 100.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          firstText,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          secondText,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ]),
                );
  }
}