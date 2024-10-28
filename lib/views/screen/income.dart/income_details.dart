
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/income_container.dart';

class IncomeDetailsPage extends StatefulWidget {
  var totalMoney;
  var productsMoney;
  var mortgagePay;
  var sellMoney;
  var mortgage;
  var extraCost;
  var buyMoney;
  var payMoney;
  IncomeDetailsPage({
    super.key,
    required this.totalMoney,
    required this.extraCost,
    required this.mortgage,
    required this.buyMoney,
    required this.mortgagePay,
    required this.payMoney,
    required this.productsMoney,
    required this.sellMoney,
  });

  @override
  State<IncomeDetailsPage> createState() => _IncomeDetailsPageState();
}

class _IncomeDetailsPageState extends State<IncomeDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.textFieldBgColor,
        body: Padding(
          padding: EdgeInsets.all(25.w),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: IncomeContainer(
                      firstText: "মোট",
                      secondText: "${widget.totalMoney} টাকা")),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("টাকা আছে"),
                  Text("${widget.productsMoney} টাকা"),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("বন্ধক টাকা জমা"),
                  Text('${widget.mortgagePay} টাকা'),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("বিক্রি করেছেন"),
                  Text('${widget.sellMoney} টাকা'),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("বন্ধক দিয়েছেন"),
                  Text("${widget.mortgage} টকা"),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("অন্যান খরচ করেছেন"),
                  Text("${widget.extraCost} টাকা".toString()),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("কিনেছেন"),
                  Text("${widget.buyMoney} টাকা"),
                ],
              ),
              SizedBox(
                height: 05.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("টাকা দিয়েছেন"),
                  Text(" ${widget.payMoney} টাকা"),
                ],
              ),

              // ElevatedButton(
              //     onPressed: (){
              //       firstSub();
              //       // secondSub();
              //       // finalSub();
              //     },
              //     child: Text("check")
              // )
            ],
          ),
        ),
      ),
    );
  }
}
