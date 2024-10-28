import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String bottomText;
  final String assetsName;
  const CustomContainer(
      {Key? key, required this.bottomText, required this.assetsName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 142.w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 3,
          offset: const Offset(0, 2), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(10.r), color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Image(
            image: AssetImage(assetsName),
            height: 30.h,
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            bottomText,
            style: TextStyle(
                fontFamily: "inter", fontSize: 15.sp, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class CustomContainerTwo extends StatelessWidget {
  final String balance;
  final String lastUpdate;
  const CustomContainerTwo(
      {Key? key, required this.balance, required this.lastUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            " Total Money",
            style: TextStyle(
                fontFamily: "itim", fontSize: 20, color: Colors.black),
          ),
          Text(
            balance,
            style: const TextStyle(
                fontFamily: "itim", fontSize: 30, color: Colors.green, fontWeight: FontWeight.w500),
          ),
          Text(
            lastUpdate,
            style: const TextStyle(
                fontFamily: "itim", fontSize: 10, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
