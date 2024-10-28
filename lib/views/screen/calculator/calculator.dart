import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button_two.dart';
import 'package:gold_manager_update/views/const/widget/custom_container_three.dart';
import 'package:gold_manager_update/views/const/widget/custom_container_two.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_four.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _perVoriController = TextEditingController();
  final _mujuriController = TextEditingController();
  final _voriController = TextEditingController();
  final _anaController = TextEditingController();
  final _rothiController = TextEditingController();
  final _pointController = TextEditingController();

  var voriPrice;
  var mujuri;
  var vori;
  var ana;
  var rothi;
  var point;

  int totalVoriPrice = 0;
  var totalGoldPrice;
  var totalPrice;
  int aa = 16;
  double? perAnaPrice;
  double? perRothiPrice;
  double? perPointPrice;
  var totalAnaPrice;
  var totalRothiPrice;
  var totalPointPrice;

  String? _formateTotalTk;
  String? _formateAna;
  String? _formatePerAna;

  String? _formateRothi;
  String? _formatePerRothi;

  String? _formatePoint;
  String? _formatePerPoint;
  String? _finalTotal;

  totalVoriAnaRithiPoint() {
    setState(() {
      voriPrice = _perVoriController.text;
      vori = _voriController.text;
      ana = _anaController.text;
      rothi = _rothiController.text;
      point = _pointController.text;
    });
  }

  totalVoriTk() {
    setState(() {
      var v1 = voriPrice;
      var v2 = vori;
      totalVoriPrice = int.parse(v1) * int.parse(v2);
    });
  }

  anaPrice() {
    setState(() {
      var v3 = voriPrice;
      var v4 = "16";
      perAnaPrice = int.parse(v3) / int.parse(v4);
      _formatePerAna = perAnaPrice!.toStringAsFixed(2);
    });
  }

  totalAnaTk() {
    setState(() {
      var a3 = perAnaPrice;
      var a4 = ana;
      totalAnaPrice = int.parse(a4) * a3!;
      _formateAna = totalAnaPrice.toStringAsFixed(2);
    });
  }

  rothiPrice() {
    setState(() {
      var r1 = perAnaPrice;
      var r2 = "6";
      perRothiPrice = r1! / double.parse(r2);
      _formatePerRothi = perRothiPrice!.toStringAsFixed(2);
    });
  }

  totalRothiTk() {
    setState(() {
      var p1 = perRothiPrice;
      var p2 = rothi;
      totalRothiPrice = double.parse(p2) * p1!;
      _formateRothi = totalRothiPrice.toStringAsFixed(2);
    });
  }

  pointPrice() {
    setState(() {
      var p1 = perRothiPrice;
      var p2 = "10";
      perPointPrice = p1! / double.parse(p2);
      _formatePerPoint = perPointPrice!.toStringAsFixed(2);
    });
  }

  totalPointTk() {
    setState(() {
      var p3 = perPointPrice;
      var p4 = point;
      totalPointPrice = double.parse(p4) * p3!;
      _formatePoint = totalPointPrice.toStringAsFixed(2);
    });
  }

  goldPrice() {
    setState(() {
      totalGoldPrice =
          totalVoriPrice + totalAnaPrice + totalRothiPrice + totalPointPrice;
      _formateTotalTk = totalGoldPrice.toStringAsFixed(2);
    });
  }

  total() {
    setState(() {
      var mujuriPrice = _mujuriController.text;
      totalPrice = totalGoldPrice + double.parse(mujuriPrice);
      _finalTotal = totalPrice.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textFieldBgColor,
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 70.h),
              CustomContainerTwo(
                widget: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("প্রতি ভরি দাম", style: AllTextStyle().perVori),
                          SizedBox(width: 20.w),
                          Flexible(
                              child: CustomTextFieldFour(
                                  controller: _perVoriController))
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text("মজুরি",
                              style: AllTextStyle().perVori),
                          SizedBox(width: 60.w),
                          Flexible(
                              child: CustomTextFieldFour(
                                  controller: _mujuriController))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "ভরি",
                          style: AllTextStyle().goldName,
                        ),
                        SizedBox(width: 60.w),
                        Flexible(
                          child: Card(
                            elevation: 05,
                            child: Container(
                                width: 50.w,
                                child: SizedBox(
                                  height: 35.h,
                                  child: CustomTextFieldFour(
                                      controller: _voriController),
                                )),
                          ),
                        ),
                        const Spacer(),
                        Text("$voriPrice X $vori = $totalVoriPrice টাকা")
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "আনা",
                          style: AllTextStyle().goldName,
                        ),
                        SizedBox(width: 55.w),
                        Flexible(
                          child: Card(
                            elevation: 05,
                            child: Container(
                                width: 50.w,
                                child: SizedBox(
                                  height: 35.h,
                                  child: CustomTextFieldFour(
                                      controller: _anaController),
                                )),
                          ),
                        ),
                        const Spacer(),
                        Text("$_formatePerAna x $ana = $_formateAna টাকা")
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "রত্তি",
                          style: AllTextStyle().goldName,
                        ),
                        SizedBox(width: 65.w),
                        Flexible(
                          child: Card(
                            elevation: 05,
                            child: Container(
                                width: 50.w,
                                child: SizedBox(
                                  height: 35.h,
                                  child: CustomTextFieldFour(
                                    controller: _rothiController,
                                  ),
                                )),
                          ),
                        ),
                        const Spacer(),
                        Text(
                            "$_formatePerRothi X $rothi =  $_formateRothi টাকা")
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "পয়েন্ট",
                          style: AllTextStyle().goldName,
                        ),
                        SizedBox(width: 50.w),
                        Flexible(
                          child: Card(
                            elevation: 05,
                            child: Container(
                                width: 50.w,
                                child: SizedBox(
                                  height: 35.h,
                                  child: CustomTextFieldFour(
                                    controller: _pointController,
                                  ),
                                )),
                          ),
                        ),
                        const Spacer(),
                        Text("$_formatePerPoint X $point = $_formatePoint টকা")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              CustomContainerThree(
                widget: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("স্বর্ণের দাম"),
                          Text("$_formateTotalTk টাকা".toString()),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("মজুরি"),
                          Text("${_mujuriController.text} টাকা".toString())
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("মোট"),
                          Text("$_finalTotal টাকা"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    child: CustomButtonTwo(
                        text: "হিসাব",
                        onAction: () {
                          totalVoriAnaRithiPoint();
                          totalVoriTk();
                          anaPrice();
                          totalAnaTk();
                          rothiPrice();
                          totalRothiTk();
                          pointPrice();
                          totalPointTk();
                          goldPrice();
                          total();

                          // print("per vori price : $voriPrice");
                          // print("vori: $vori");
                          // print("total vori price : $totalVoriPrice");
                          // print("perAna Price : $perAnaPrice");
                          // print("Total Ana price : $totalAnaPrice");
                          // print("per rothi price : $perRothiPrice");
                          // print("Total Rothi Tk : $totalRothiPrice");
                          // print("per point price : $perPointPrice");
                          // print("Total point tk : $totalPointPrice");
                          // print("total Gold Price : $totalGoldPrice");
                          // print("Total Price : $totalPrice");
                        }),
                  ),
                  // ElevatedButton(onPressed: () {
                  //   _voriController.clear();
                  //   _mujuriController.clear();
                  //   _perVoriController.clear();
                  //   _anaController.clear();
                  //   _rothiController.clear();
                  //   _pointController.clear();
                  //
                  // },
                  //     child: const Text("Reset"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
