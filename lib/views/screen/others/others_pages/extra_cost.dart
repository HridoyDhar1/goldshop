import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_three.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';

class ExtraCost extends StatefulWidget {
  const ExtraCost({Key? key}) : super(key: key);

  @override
  State<ExtraCost> createState() => _ExtraCostState();
}

class _ExtraCostState extends State<ExtraCost> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();
  final controller5 = TextEditingController();
  final controller6 = TextEditingController();
  final controller7 = TextEditingController();
  final controller8 = TextEditingController();
  final controller9 = TextEditingController();
  final controller10 = TextEditingController();
  final controller11 = TextEditingController();
  final controller12 = TextEditingController();
  final controller13 = TextEditingController();
  final controller14 = TextEditingController();
  final controller15 = TextEditingController();
  final controller16 = TextEditingController();
  final controller17 = TextEditingController();
  final controller18 = TextEditingController();
  final controller19 = TextEditingController();
  final controller20 = TextEditingController();

  void initState() {
    controller2.text = "0";
    controller4.text = "0";
    controller6.text = "0";
    controller8.text = "0";
    controller10.text = "0";

    controller12.text = "0";
    controller14.text = "0";
    controller16.text = "0";
    controller18.text = "0";
    controller20.text = "0";

    // TODO: implement initState
    super.initState();
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  extraCost(context) async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference mortgage = FirebaseFirestore.instance
          .collection("extra-cost")
          .doc(currentUser)
          .collection("data");
      mortgage.add({
        'first-name': controller1.text,
        'second-name': controller3.text,
        'third-name': controller5.text,
        'four-name': controller7.text,
        'five-name': controller9.text,
        'six-name': controller11.text,
        'seven-name': controller13.text,
        'eight-name': controller15.text,
        'nine-name': controller17.text,
        'ten-name': controller19.text,
        'first-money': controller2.text,
        'second-money': controller4.text,
        'third-money': controller6.text,
        'four-money': controller8.text,
        'five-money': controller10.text,
        'six-money': controller12.text,
        'seven-money': controller14.text,
        'eight-money': controller16.text,
        'nine-money': controller18.text,
        'ten-money': controller20.text,
        'total-money': totalMoney,
      }).whenComplete(() {
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

  int textfield_count = 1;
  bool _containerVisible = false;
  int? totalMoney;

  getTotalMoney() {
    setState(() {
      var m1 = controller2.text;
      var m2 = controller4.text;
      var m3 = controller6.text;
      var m4 = controller8.text;
      var m5 = controller10.text;
      var m6 = controller12.text;
      var m7 = controller14.text;
      var m8 = controller16.text;
      var m9 = controller18.text;
      var m10 = controller20.text;
      totalMoney = int.parse(m1) +
          int.parse(m2) +
          int.parse(m3) +
          int.parse(m4) +
          int.parse(m5) +
          int.parse(m6) +
          int.parse(m7) +
          int.parse(m8) +
          int.parse(m9) +
          int.parse(m10);
      print(" total money : $totalMoney");
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
        title: Text(
          "অন্যান খরচ",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Column(
                children: [
                  textfield_count > 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller1,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller2,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 1
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller3,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller4,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 2
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller5,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller6,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 3
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller7,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller8,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 4
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller9,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller10,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 5
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller11,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller12,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 6
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller13,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller14,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 7
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller15,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller16,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 8
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller17,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller18,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                  SizedBox(height: 20.h),
                  textfield_count > 9
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "নাম",
                                keyBoardType: TextInputType.text,
                                controller: controller19,
                              ),
                            ),
                            SizedBox(
                              width: 150.w,
                              child: CustomTextFieldThree(
                                labelText: "টাকা",
                                keyBoardType: TextInputType.number,
                                controller: controller20,
                              ),
                            ),
                          ],
                        )
                      : const SizedBox(),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: CustomButton(
                        text: "হিসাব",
                        onAction: () {
                          getTotalMoney();
                        }),
                  ),
                  // SizedBox(
                  //   width: 30.w,
                  // ),
                  Container(
                    width: 135.w,
                    height: 38.h,
                    color: AppColor.textFieldBgColor,
                    child: Center(
                        child: Text(
                            totalMoney == null ? "0" : "মোট : $totalMoney টাকা",
                            style: AllTextStyle().employeeName)),
                  ),
                ],
              ),
              SizedBox(
                height: 160.h,
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      textfield_count++;
                    });
                  },
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Visibility(
                      visible: _containerVisible,
                      child: Image.asset("assets/buttonImage/extracost.png",
                          height: 35.h),
                    ),
                  )),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  text: "সেইভ",
                  onAction: () {
                    extraCost(context);
                  }),
              SizedBox(height: 30.h),
              SizedBox(
                height: 60.h,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff42EA92),
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              _containerVisible = !_containerVisible;
            });
          }),
    );
  }
}
