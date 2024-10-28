// ignore_for_file: must_be_immutable, unused_field

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_four.dart';
import 'package:hive/hive.dart';

import '../../home_page/home.dart';

class NewMortgageListDetailsPage extends StatefulWidget {
  var newMortgageDetails;
  NewMortgageListDetailsPage({Key? key, required this.newMortgageDetails})
      : super(key: key);

  @override
  State<NewMortgageListDetailsPage> createState() =>
      _NewMortgageListDetailsPageState();
}

class _NewMortgageListDetailsPageState
    extends State<NewMortgageListDetailsPage> {
  bool _isVisible = false;
  bool _payVisible = false;
  bool _interestVisible = false;

  final _payController = TextEditingController();
  final _interestController = TextEditingController();
  final _totalMoney = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  addMortgagePay(context) async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference mortgagePay = FirebaseFirestore.instance
          .collection("mortgage-pay")
          .doc(currentUser)
          .collection("data");
      mortgagePay.add({
        'pay': _payController.text,
        'name': widget.newMortgageDetails["client-name"],
        'total-money': totalMoney,
      }).whenComplete(() async {
        await mortgagePayData!.add(_payController.text.toString());
        print("added");
        Fluttertoast.showToast(
            msg: "Successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomePage()));
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  Box? mortgagePayData;

  @override
  void initState() {
    mortgagePayData = Hive.box("mortgagePay");
    _interestController.text = '0';
   
    super.initState();
  }

  var totalMoney;
  var restMoney;
  getTotalMoney() {
    setState(() {
      var a = _interestController.text.toString();
      var b = widget.newMortgageDetails["total-money"].toString();
      totalMoney = int.parse(a) + int.parse(b);
      print("final total money : ${totalMoney}");
    });
  }

  getRestMoney() {
    setState(() {
      var p = _payController.text.toString();
      restMoney = totalMoney - int.parse(p);
      print("Rest Money: ${restMoney}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textFieldBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: const Text(
          "বন্ধকের তথ্য",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(),
              SizedBox(height: 10.h),
              Text("Name : ${widget.newMortgageDetails["client-name"]}",
                  style: AllTextStyle().goldName),
              SizedBox(height: 10.h),
              Text("Address : ${widget.newMortgageDetails["client-address"]}",
                  style: AllTextStyle().goldName),
              SizedBox(height: 10.h),
              Text("Phone : ${widget.newMortgageDetails["client-phone"]}",
                  style: AllTextStyle().goldName),
              SizedBox(height: 10.h),
              Text("Date : ${widget.newMortgageDetails["date"]}",
                  style: AllTextStyle().goldName),

              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 35.h,
                  width: 140.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.white),
                  child: Center(
                      child: Text(
                          "${widget.newMortgageDetails["parcent"]} % 100",
                          style: AllTextStyle().goldName)),
                ),
              ),
              SizedBox(height: 20.h),

              widget.newMortgageDetails["first_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "1. ${widget.newMortgageDetails["first-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["first_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["first_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["first_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["first_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newMortgageDetails["second_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "2. ${widget.newMortgageDetails["second-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["second_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["second_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text(
                                "${widget.newMortgageDetails["second_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["second_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newMortgageDetails["third_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "3. ${widget.newMortgageDetails["third-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["third_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["third_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["third_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["third_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["four_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "4. ${widget.newMortgageDetails["four-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["four_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["four_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["four_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["four_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["five_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "5. ${widget.newMortgageDetails["five-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["five_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["five_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["five_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["five_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["six_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "6. ${widget.newMortgageDetails["six-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["six_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["six_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["six_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["six_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["seven_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "7. ${widget.newMortgageDetails["seven-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["seven_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["seven_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["seven_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["seven_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["eight_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "8. ${widget.newMortgageDetails["eight-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["eight_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["eight_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["eight_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["eight_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newMortgageDetails["nine_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "9. ${widget.newMortgageDetails["nine-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["nine_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["nine_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["nine_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["nine_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 10.h),
              widget.newMortgageDetails["ten_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "10. ${widget.newMortgageDetails["ten-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newMortgageDetails["ten_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["ten_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["ten_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newMortgageDetails["ten_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),

              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "Total weight : ${widget.newMortgageDetails["total-weight"]}",
                      style: AllTextStyle().goldName),
                  Text("Total : ${widget.newMortgageDetails["total-money"]} TK",
                      style: AllTextStyle().goldName),
                ],
              ),
              SizedBox(height: 40.h),
              // Align(
              //   alignment: Alignment.center,
              //   child: Container(
              //     height: 35.h,
              //     width: 120.w,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10.r),
              //         color: const Color(0xff68E1FD)
              //     ),
              //     child: Center(child: Text("Pay", style: AllTextStyle().goldName)),
              //   ),
              // ),
              // SizedBox(height: 40.h),

              Visibility(
                visible: _payVisible,
                child: Row(
                  children: [
                    Spacer(),
                    Text(
                      "পে :  ",
                      style: AllTextStyle().goldName,
                    ),
                    SizedBox(
                        width: 100.w,
                        child: CustomTextFieldFour(controller: _payController))
                  ],
                ),
              ),
              SizedBox(
                height: 05.h,
              ),
              Visibility(
                visible: _interestVisible,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          "সুদ :  ",
                          style: AllTextStyle().goldName,
                        ),
                        SizedBox(
                            width: 100.w,
                            child: CustomTextFieldFour(
                                controller: _interestController))
                      ],
                    ),
                    SizedBox(
                      height: 05.h,
                    ),
                    Visibility(
                      visible: _interestVisible,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 140.w,
                                child: CustomButton(
                                    text: "হিসাব",
                                    onAction: () {
                                      getTotalMoney();
                                    }),
                              ),
                              Spacer(),
                              Container(
                                height: 35.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "মোট : ${totalMoney} টাকা",
                                    style: AllTextStyle().goldName,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 05.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 140.w,
                                child: CustomButton(
                                    text: "হিসাব",
                                    onAction: () {
                                      if (_payController.text.isEmpty) {
                                        Fluttertoast.showToast(
                                            msg: "Please Add Pay Money",
                                            backgroundColor: Colors.red);
                                      } else {
                                        getRestMoney();
                                      }
                                    }),
                              ),
                              Spacer(),
                              Container(
                                height: 35.h,
                                width: 160.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.white),
                                child: Center(
                                  child: Text(
                                    "বাকি : ${restMoney} টাকা",
                                    style: AllTextStyle().goldName,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Visibility(
                visible: _isVisible,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _payVisible = true;
                                });
                              },
                              child: Image.asset(
                                "assets/images/pay.png",
                                height: 30.h,
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _interestVisible = true;
                                });
                              },
                              child: Image.asset(
                                "assets/images/interest.png",
                                height: 30.h,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  text: "সাবমিট",
                  onAction: () {
                    addMortgagePay(context);
                  })
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff42EA92),
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
