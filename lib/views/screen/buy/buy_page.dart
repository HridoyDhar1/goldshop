// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_four.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_three.dart';
import 'package:gold_manager_update/views/const/widget/date_picker.dart';
import 'package:gold_manager_update/views/const/widget/product_text_field.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';
import 'package:intl/intl.dart';

class AddNewBuy extends StatefulWidget {
  const AddNewBuy({Key? key}) : super(key: key);

  @override
  State<AddNewBuy> createState() => _AddNewBuyState();
}

class _AddNewBuyState extends State<AddNewBuy> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController _carretController=TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();
  TextEditingController controller11 = TextEditingController();
  TextEditingController controller12 = TextEditingController();
  TextEditingController controller13 = TextEditingController();
  TextEditingController controller14 = TextEditingController();
  TextEditingController controller15 = TextEditingController();
  TextEditingController controller16 = TextEditingController();
  TextEditingController controller17 = TextEditingController();
  TextEditingController controller18 = TextEditingController();
  TextEditingController controller19 = TextEditingController();
  TextEditingController controller20 = TextEditingController();
  TextEditingController controller21 = TextEditingController();
  TextEditingController controller22 = TextEditingController();
  TextEditingController controller23 = TextEditingController();
  TextEditingController controller24 = TextEditingController();
  TextEditingController controller25 = TextEditingController();
  TextEditingController controller26 = TextEditingController();
  TextEditingController controller27 = TextEditingController();
  TextEditingController controller28 = TextEditingController();
  TextEditingController controller29 = TextEditingController();
  TextEditingController controller30 = TextEditingController();
  TextEditingController controller31 = TextEditingController();
  TextEditingController controller32 = TextEditingController();
  TextEditingController controller33 = TextEditingController();
  TextEditingController controller34 = TextEditingController();
  TextEditingController controller35 = TextEditingController();
  TextEditingController controller36 = TextEditingController();
  TextEditingController controller37 = TextEditingController();
  TextEditingController controller38 = TextEditingController();
  TextEditingController controller39 = TextEditingController();
  TextEditingController controller40 = TextEditingController();
  TextEditingController controller41 = TextEditingController();
  TextEditingController controller42 = TextEditingController();
  TextEditingController controller43 = TextEditingController();
  TextEditingController controller44 = TextEditingController();
  TextEditingController controller45 = TextEditingController();
  TextEditingController controller46 = TextEditingController();
  TextEditingController controller47 = TextEditingController();
  TextEditingController controller48 = TextEditingController();
  TextEditingController controller49 = TextEditingController();
  TextEditingController controller50 = TextEditingController();
  TextEditingController moneyController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  void initState() {
    controller2.text = "0";
    controller3.text = "0";
    controller4.text = "0";
    controller5.text = "0";

    controller7.text = "0";
    controller8.text = "0";
    controller9.text = "0";
    controller10.text = "0";

    controller12.text = "0";
    controller13.text = "0";
    controller14.text = "0";
    controller15.text = "0";

    controller17.text = "0";
    controller18.text = "0";
    controller19.text = "0";
    controller20.text = "0";

    controller22.text = "0";
    controller23.text = "0";
    controller24.text = "0";
    controller25.text = "0";

    controller27.text = "0";
    controller28.text = "0";
    controller29.text = "0";
    controller30.text = "0";

    controller32.text = "0";
    controller33.text = "0";
    controller34.text = "0";
    controller35.text = "0";

    controller37.text = "0";
    controller38.text = "0";
    controller39.text = "0";
    controller40.text = "0";

    controller42.text = "0";
    controller43.text = "0";
    controller44.text = "0";
    controller45.text = "0";

    controller47.text = "0";
    controller48.text = "0";
    controller49.text = "0";
    controller50.text = "0";

    super.initState();
  }

  //final data list

  int? finalPoint = 0;
  int? finalRothi = 0;
  int? finalAna = 0;
  int? finalVori = 0;

  int? finalAdRothi = 0;
  int? finalAdAna = 0;
  int? finalAdVori = 0;
  int? p = 0;
  int? r = 0;
  int? a = 0;

  int? adRothi = 0;
  int? adAna = 0;
  int? adVori = 0;

  addpointToRothi() {
    setState(() {
      var num1 = p;
      var num2 = finalPoint;
      adRothi = (num1! - num2!);
      print("adRothi : $adRothi");
    });
  }

  pointToRothiConvert() {
    setState(() {
      if (adRothi == 10) {
        finalAdRothi = 1;
      } else if (adRothi == 20) {
        finalAdRothi = 2;
      } else if (adRothi == 30) {
        finalAdRothi = 3;
      } else if (adRothi == 40) {
        finalAdRothi = 4;
      } else if (adRothi == 50) {
        finalAdRothi = 5;
      } else if (adRothi == 60) {
        finalAdRothi = 6;
      } else if (adRothi == 70) {
        finalAdRothi = 7;
      } else if (adRothi == 80) {
        finalAdRothi = 8;
      } else if (adRothi == 90) {
        finalAdRothi = 9;
      } else if (adRothi == 100) {
        finalAdRothi = 10;
      } else
        return;
      print("final Ad Rothi : $finalAdRothi");
    });
  }

  totalPoint() {
    setState(() {
      var p1 = controller5.text;
      var p2 = controller10.text;
      var p3 = controller15.text;
      var p4 = controller20.text;
      var p5 = controller25.text;
      var p6 = controller30.text;
      var p7 = controller35.text;
      var p8 = controller40.text;
      var p9 = controller45.text;
      var p10 = controller50.text;

      p = int.parse(p1) +
          int.parse(p2) +
          int.parse(p3) +
          int.parse(p4) +
          int.parse(p5) +
          int.parse(p6) +
          int.parse(p7) +
          int.parse(p8) +
          int.parse(p9) +
          int.parse(p10);

      print("total point:$p");
      if (p! > 9 && p! <= 19) {
        finalPoint = (p! - 10);
      } else if (p! > 9 && p! <= 29) {
        finalPoint = (p! - 20);
      } else if (p! > 9 && p! <= 39) {
        finalPoint = p! - 30;
      } else if (p! > 9 && p! <= 49) {
        finalPoint = p! - 40;
      } else if (p! > 9 && p! <= 59) {
        finalPoint = p! - 50;
      } else if (p! > 9 && p! <= 69) {
        finalPoint = p! - 60;
      } else if (p! > 9 && p! <= 79) {
        finalPoint = p! - 70;
      } else if (p! > 9 && p! <= 89) {
        finalPoint = p! - 80;
      } else if (p! > 9 && p! <= 99) {
        finalPoint = p! - 90;
      } else if (p! > 9 && p! <= 109) {
        finalPoint = p! - 100;
      } else {
        finalPoint = p;
      }
      print("finalPoint: $finalPoint");
    });
  }

  addRothiToAna() {
    setState(() {
      var num3 = r;
      var num4 = finalRothi;
      adAna = (num3! - num4!);
      print("adAna : $adAna");
    });
  }

  rothiToAnaConvert() {
    setState(() {
      if (adAna! > 0 && adAna! <= 6) {
        finalAdAna = 1;
      } else if (adAna! > 0 && adAna! <= 12) {
        finalAdAna = 2;
      } else if (adAna! > 0 && adAna! <= 18) {
        finalAdAna = 3;
      } else if (adAna! > 0 && adAna! <= 24) {
        finalAdAna = 4;
      } else if (adAna! > 0 && adAna! <= 30) {
        finalAdAna = 5;
      } else if (adAna! > 0 && adAna! <= 36) {
        finalAdAna = 6;
      } else if (adAna! > 0 && adAna! <= 42) {
        finalAdAna = 7;
      } else if (adAna! > 0 && adAna! <= 48) {
        finalAdAna = 8;
      } else if (adAna! > 0 && adAna! <= 4) {
        finalAdAna = 9;
      } else if (adAna! > 0 && adAna! <= 60) {
        finalAdAna = 10;
      } else if (adAna! > 0 && adAna! <= 66) {
        finalAdAna = 11;
      } else if (adAna! > 0 && adAna! <= 72) {
        finalAdAna = 12;
      } else if (adAna! > 0 && adAna! <= 78) {
        finalAdAna = 13;
      } else if (adAna! > 0 && adAna! <= 84) {
        finalAdAna = 14;
      } else if (adAna! > 0 && adAna! <= 90) {
        finalAdAna = 15;
      } else if (adAna! > 0 && adAna! <= 96) {
        finalAdAna = 16;
      } else if (adAna! > 0 && adAna! <= 102) {
        finalAdAna = 17;
      } else if (adAna! > 0 && adAna! <= 108) {
        finalAdAna = 18;
      } else if (adAna! > 0 && adAna! <= 114) {
        finalAdAna = 19;
      } else if (adAna! > 0 && adAna! <= 120) {
        finalAdAna = 20;
      } else
        return;
      print("final Ad Rothi : $finalAdRothi");
    });
  }

  totalRothi() {
    setState(() {
      var r1 = controller4.text;
      var r2 = controller9.text;
      var r4 = controller14.text;
      var r5 = controller19.text;
      var r6 = controller24.text;
      var r7 = controller29.text;
      var r8 = controller34.text;
      var r9 = controller39.text;
      var r10 = controller44.text;
      var r11 = controller49.text;
      var r3 = finalAdRothi;

      r = int.parse(r1) +
          int.parse(r2) +
          int.parse(r4) +
          int.parse(r5) +
          int.parse(r6) +
          int.parse(r7) +
          int.parse(r8) +
          int.parse(r9) +
          int.parse(r10) +
          int.parse(r11) +
          r3!;

      print("total Rothi:$r");
      if (r! > 5 && r! <= 11) {
        finalRothi = r! - 6;
      } else if (r! > 5 && r! <= 17) {
        finalRothi = r! - 12;
      } else if (r! > 5 && r! <= 23) {
        finalRothi = r! - 18;
      } else if (r! > 5 && r! <= 29) {
        finalRothi = r! - 24;
      } else if (r! > 5 && r! <= 35) {
        finalRothi = r! - 30;
      } else if (r! > 5 && r! <= 41) {
        finalRothi = r! - 36;
      } else if (r! > 5 && r! <= 47) {
        finalRothi = r! - 42;
      } else if (r! > 5 && r! <= 53) {
        finalRothi = r! - 48;
      } else if (r! > 5 && r! <= 59) {
        finalRothi = r! - 54;
      } else if (r! > 5 && r! <= 65) {
        finalRothi = r! - 60;
      } else if (r! > 5 && r! <= 71) {
        finalRothi = r! - 66;
      } else if (r! > 5 && r! <= 77) {
        finalRothi = r! - 72;
      } else if (r! > 5 && r! <= 83) {
        finalRothi = r! - 78;
      } else if (r! > 5 && r! <= 89) {
        finalRothi = r! - 84;
      } else if (r! > 5 && r! <= 95) {
        finalRothi = r! - 90;
      } else if (r! > 5 && r! <= 101) {
        finalRothi = r! - 96;
      } else if (r! > 5 && r! <= 107) {
        finalRothi = r! - 102;
      } else if (r! > 5 && r! <= 113) {
        finalRothi = r! - 108;
      } else if (r! > 5 && r! <= 119) {
        finalRothi = r! - 114;
      } else if (r! > 5 && r! <= 125) {
        finalRothi = r! - 120;
      } else {
        finalRothi = r;
      }
      print("finalRothi: $finalRothi");
    });
  }

  totalAna() {
    setState(() {
      var a1 = controller3.text;
      var a2 = controller8.text;
      var a4 = controller13.text;
      var a5 = controller18.text;
      var a6 = controller23.text;
      var a7 = controller28.text;
      var a8 = controller33.text;
      var a9 = controller38.text;
      var a10 = controller43.text;
      var a11 = controller48.text;
      var a3 = finalAdAna;

      a = int.parse(a1) +
          int.parse(a2) +
          a3! +
          int.parse(a4) +
          int.parse(a5) +
          int.parse(a6) +
          int.parse(a7) +
          int.parse(a8) +
          int.parse(a9) +
          int.parse(a10) +
          int.parse(a11);

      print("totalAna:$a");
      if (a! > 15 && a! <= 31) {
        finalAna = a! - 16;
      } else if (a! > 15 && a! <= 47) {
        finalAna = a! - 32;
      } else if (a! > 15 && a! <= 63) {
        finalAna = a! - 48;
      } else if (a! > 15 && r! <= 79) {
        finalAna = a! - 64;
      } else if (a! > 15 && a! <= 95) {
        finalAna = a! - 80;
      } else if (a! > 15 && a! <= 111) {
        finalAna = a! - 96;
      } else if (a! > 15 && a! <= 127) {
        finalAna = a! - 112;
      } else if (a! > 15 && a! <= 143) {
        finalAna = a! - 128;
      } else if (a! > 15 && a! <= 159) {
        finalAna = a! - 144;
      } else if (a! > 15 && a! <= 175) {
        finalAna = a! - 160;
      } else if (a! > 15 && a! <= 191) {
        finalAna = a! - 176;
      } else if (a! > 15 && a! <= 207) {
        finalAna = a! - 192;
      } else {
        finalAna = a;
      }
      print("finalAnai: $finalAna");
    });
  }

  addAnaToVori() {
    setState(() {
      var num5 = a;
      var num6 = finalAna;
      adVori = (num5! - num6!);
      print("adVori : $adVori");
    });
  }

  anaToVoriConvert() {
    setState(() {
      if (adVori == 16) {
        finalAdVori = 1;
      } else if (adVori == 32) {
        finalAdVori = 2;
      } else if (adVori == 48) {
        finalAdVori = 3;
      } else if (adVori == 64) {
        finalAdVori = 4;
      } else if (adVori == 80) {
        finalAdVori = 5;
      } else if (adVori == 96) {
        finalAdVori = 6;
      } else if (adVori == 112) {
        finalAdVori = 7;
      } else if (adVori == 128) {
        finalAdVori = 8;
      } else if (adVori == 144) {
        finalAdVori = 9;
      } else if (adVori == 160) {
        finalAdVori = 10;
      } else if (adVori == 176) {
        finalAdVori = 11;
      } else if (adVori == 192) {
        finalAdVori = 12;
      } else
        return;
      print("final Ad Vori : $finalAdVori");
    });
  }

  totalVori() {
    setState(() {
      var v1 = controller2.text;
      var v2 = controller7.text;
      var v4 = controller12.text;
      var v5 = controller17.text;
      var v6 = controller22.text;
      var v7 = controller27.text;
      var v8 = controller32.text;
      var v9 = controller37.text;
      var v10 = controller42.text;
      var v11 = controller47.text;
      var v3 = finalAdVori;

      finalVori = int.parse(v1) +
          int.parse(v2) +
          v3! +
          int.parse(v4) +
          int.parse(v5) +
          int.parse(v6) +
          int.parse(v7) +
          int.parse(v8) +
          int.parse(v9) +
          int.parse(v10) +
          int.parse(v11);
    });
  }

  var weight;
  finalWeight() {
    weight = "$finalVori.$finalAna.$finalRothi.$finalPoint";
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  produstAndMoney(context) async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference buy = FirebaseFirestore.instance
          .collection("new-buy")
          .doc(currentUser)
          .collection("data");
      buy.add({
        'gold_type_first_name': controller1.text,
        'gold_type_second_name': controller6.text,
        'gold_type_third_name': controller11.text,
        'gold_type_four_name': controller16.text,
        'gold_type_five_name': controller21.text,
        'gold_type_six_name': controller26.text,
        'gold_type_seven_name': controller31.text,
        'gold_type_eight_name': controller36.text,
        'gold_type_nine_name': controller41.text,
        'gold_type_ten_name': controller46.text,
        'first_vori': controller2.text,
        'second_vori': controller7.text,
        'third_vori': controller12.text,
        'four_vori': controller17.text,
        'five_vori': controller22.text,
        'six_vori': controller27.text,
        'seven_vori': controller32.text,
        'eight_vori': controller37.text,
        'nine_vori': controller42.text,
        'ten_vori': controller47.text,
        'first_ana': controller3.text,
        'second_ana': controller8.text,
        'third_ana': controller13.text,
        'four_ana': controller18.text,
        'five_ana': controller23.text,
        'six_ana': controller28.text,
        'seven_ana': controller33.text,
        'eight_ana': controller38.text,
        'nine_ana': controller43.text,
        'ten_ana': controller48.text,
        'first_rothi': controller4.text,
        'second_rothi': controller9.text,
        'third_rothi': controller14.text,
        'four_rothi': controller19.text,
        'five_rothi': controller24.text,
        'six_rothi': controller29.text,
        'seven_rothi': controller34.text,
        'eight_rothi': controller39.text,
        'nine_rothi': controller44.text,
        'ten_rothi': controller49.text,
        'first_point': controller5.text,
        'second_point': controller10.text,
        'third_point': controller15.text,
        'four_point': controller20.text,
        'five_point': controller25.text,
        'six_point': controller30.text,
        'seven_point': controller35.text,
        'eight_point': controller40.text,
        'nine_point': controller45.text,
        'ten_point': controller50.text,
        'total_weight': weight,
        'money': moneyController.text,
        'date': _dateController.text,
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
          "কিনুন",
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
                height: 0.h,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: DatePickerTextField(controller: _dateController)),
              SizedBox(
                height: 20.h,
              ),
              productTextField(
                textfield_count: textfield_count,
                controller1: controller1,
                controller2: controller2,
                controller3: controller3,
                controller4: controller4,
                controller5: controller5,
                controller6: controller6,
                controller7: controller7,
                controller8: controller8,
                controller9: controller9,
                controller10: controller10,
                controller41: controller41,
                controller12: controller12,
                controller13: controller13,
                controller14: controller14,
                controller15: controller15,
                controller17: controller17,
                controller18: controller18,
                controller19: controller19,
                controller20: controller20,
                controller22: controller22,
                controller23: controller23,
                controller24: controller24,
                controller25: controller25,
                controller27: controller27,
                controller28: controller28,
                controller29: controller29,
                controller30: controller30,
                controller32: controller32,
                controller33: controller33,
                controller34: controller34,
                controller35: controller35,
                controller37: controller37,
                controller38: controller38,
                controller39: controller39,
                controller40: controller40,
                controller42: controller42,
                controller43: controller43,
                controller44: controller44,
                controller45: controller45,
                controller46: controller46,
                controller47: controller47,
                controller48: controller48,
                controller49: controller49,
                controller50: controller50,
                carretController: _carretController,carretController1: _carretController,
                carretController2: _carretController,
                carretController3: _carretController, carretController4: _carretController
                ,
                 carretController5: _carretController,
                carretController6: _carretController,
                carretController7: _carretController, carretController8: _carretController
                ,
                 carretController9: _carretController,
                carretController10: _carretController,
                carretController11: _carretController, carretController12: _carretController, 
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150.w,
                    child: CustomButton(
                        text: "Calculate",
                        onAction: () {
                          totalPoint();
                          addpointToRothi();
                          pointToRothiConvert();
                          totalRothi();
                          addRothiToAna();
                          rothiToAnaConvert();
                          totalAna();
                          addAnaToVori();
                          anaToVoriConvert();
                          totalVori();
                          finalWeight();
                        }),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Container(
                    width: 135.w,
                    height: 38.h,
                    color: AppColor.textFieldBgColor,
                    child: Center(
                        child: Text(
                            "$finalVori.$finalAna.$finalRothi.$finalPoint",
                            style: AllTextStyle().employeeName)),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Spacer(),
                  Text(
                    "Taka :",
                    style: AllTextStyle().goldName,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                      width: 200.w,
                      child: CustomTextFieldFour(controller: moneyController)),
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
                      child: Image.asset("assets/buttonImage/buy.png",
                          height: 35.h),
                    ),
                  )),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  text: "Save",
                  onAction: () async {
                    if (moneyController.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please input money");
                    } else {
                      produstAndMoney(context);
                    }

                    print("added");
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
