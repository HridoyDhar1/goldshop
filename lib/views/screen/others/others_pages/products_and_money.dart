import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_six.dart';

import 'package:gold_manager_update/views/screen/home_page/home.dart';

class ProductsAndMoney extends StatefulWidget {
  const ProductsAndMoney({Key? key}) : super(key: key);

  @override
  State<ProductsAndMoney> createState() => _ProductsAndMoneyState();
}

class _ProductsAndMoneyState extends State<ProductsAndMoney> {
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
  final controller21 = TextEditingController();
  final controller22 = TextEditingController();
  final controller23 = TextEditingController();
  final controller24 = TextEditingController();
  final controller25 = TextEditingController();
  final controller26 = TextEditingController();
  final controller27 = TextEditingController();
  final controller28 = TextEditingController();
  final controller29 = TextEditingController();
  final controller30 = TextEditingController();
  final controller31 = TextEditingController();
  final controller32 = TextEditingController();
  final controller33 = TextEditingController();
  final controller34 = TextEditingController();
  final controller35 = TextEditingController();
  final controller36 = TextEditingController();
  final controller37 = TextEditingController();
  final controller38 = TextEditingController();
  final controller39 = TextEditingController();
  final controller40 = TextEditingController();
  final controller41 = TextEditingController();
  final controller42 = TextEditingController();
  final controller43 = TextEditingController();
  final controller44 = TextEditingController();
  final controller45 = TextEditingController();
  final controller46 = TextEditingController();
  final controller47 = TextEditingController();
  final controller48 = TextEditingController();
  final controller49 = TextEditingController();
  final controller50 = TextEditingController();
  final moneyController = TextEditingController();

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
    //  moneyController.text = "0";

    // TODO: implement initState
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
      CollectionReference mortgage = FirebaseFirestore.instance
          .collection("products-money")
          .doc(currentUser)
          .collection("data");
      mortgage.add({
        'total_vori': finalVori,
        "total_ana": finalAna,
        'total_rothi': finalRothi,
        'total_point': finalPoint,
        'total_weight': weight,
        'total_money': moneyController.text

        // 'gold_type_first_name': controller1.text,
        // 'gold_type_second_name': controller6.text,
        // 'gold_type_third_name': controller11.text,
        // 'gold_type_four_name': controller16.text,
        // 'gold_type_five_name': controller21.text,
        // 'gold_type_six_name': controller26.text,
        // 'gold_type_seven_name': controller31.text,
        // 'gold_type_eight_name': controller36.text,
        // 'gold_type_nine_name': controller41.text,
        // 'gold_type_ten_name': controller46.text,
        // 'first_vori': controller2.text,
        // 'second_vori': controller7.text,
        // 'third_vori': controller12.text,
        // 'four_vori': controller17.text,
        // 'five_vori': controller22.text,
        // 'six_vori': controller27.text,
        // 'seven_vori': controller32.text,
        // 'eight_vori': controller37.text,
        // 'nine_vori': controller42.text,
        // 'ten_vori': controller47.text,
        // 'first_ana': controller3.text,
        // 'second_ana': controller8.text,
        // 'third_ana': controller13.text,
        // 'four_ana': controller18.text,
        // 'five_ana': controller23.text,
        // 'six_ana': controller28.text,
        // 'seven_ana': controller33.text,
        // 'eight_ana': controller38.text,
        // 'nine_ana': controller43.text,
        // 'ten_ana': controller48.text,
        // 'first_rothi': controller4.text,
        // 'second_rothi': controller9.text,
        // 'third_rothi': controller14.text,
        // 'four_rothi': controller19.text,
        // 'five_rothi': controller24.text,
        // 'six_rothi': controller29.text,
        // 'seven_rothi': controller34.text,
        // 'eight_rothi': controller39.text,
        // 'nine_rothi': controller44.text,
        // 'ten_rothi': controller49.text,
        // 'first_point': controller5.text,
        // 'second_point': controller10.text,
        // 'third_point': controller15.text,
        // 'four_point': controller20.text,
        // 'five_point': controller25.text,
        // 'six_point': controller30.text,
        // 'seven_point': controller35.text,
        // 'eight_point': controller40.text,
        // 'nine_point': controller45.text,
        // 'ten_point': controller50.text,
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
          "টাকা জমা রাখুন",
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
              // Column(
              //   children: [
              //     textfield_count > 0
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller1,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller2,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller3,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller4,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller5,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 1
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller6,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller7,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller8,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller9,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller10,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 2
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller11,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller12,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller13,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller14,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller15,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 3
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller16,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller17,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller18,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller19,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller20,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 4
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller21,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller22,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller23,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller24,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller25,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 5
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller26,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller27,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller28,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller29,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller30,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 6
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller31,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller32,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller33,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller34,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller35,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 7
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller36,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller37,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller38,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller39,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller40,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 8
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller41,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller42,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller43,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller44,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller45,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //     SizedBox(height: 20.h),
              //     textfield_count > 9
              //         ? Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //               SizedBox(
              //                 width: 100.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Name",
              //                   keyBoardType: TextInputType.text,
              //                   controller: controller46,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Vori",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller47,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Ana",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller48,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Rothi",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller49,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 50.w,
              //                 child: CustomTextFieldThree(
              //                   labelText: "Point",
              //                   keyBoardType: TextInputType.number,
              //                   controller: controller50,
              //                 ),
              //               ),
              //             ],
              //           )
              //         : const SizedBox(),
              //   ],
              // ),
              // const Divider(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     SizedBox(
              //       width: 150.w,
              //       child: CustomButton(
              //           text: "Calculate",
              //           onAction: () {

              //          totalPoint();
              //          addpointToRothi();
              //          pointToRothiConvert();
              //          totalRothi();
              //          addRothiToAna();
              //          rothiToAnaConvert();
              //          totalAna();
              //          addAnaToVori();
              //          anaToVoriConvert();
              //          totalVori();
              //          finalWeight();

              //           }),
              //     ),
              //     SizedBox(
              //       width: 30.w,
              //     ),
              //     Container(
              //       width: 135.w,
              //       height: 38.h,
              //       color: AppColor.textFieldBgColor,
              //       child: Center(
              //           child: Text(
              //               "$finalVori.$finalAna.$finalRothi.$finalPoint",
              //               style: AllTextStyle().employeeName)),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  
                  Spacer(),
                  SizedBox(
                    width: 310.w,
                    child: CustomTextFieldSix(
                        childText: "টাকা",
                        keyboardType: TextInputType.number,
                        controller: moneyController,
                        prefixIcon: Icon(Icons.attach_money)),
                  ),
                ],
              ),
              // SizedBox(
              //   height: 160.h,
              // ),
              // InkWell(
              //     onTap: () {
              //       setState(() {
              //         textfield_count++;
              //       });
              //     },
              //     child: Align(
              //       alignment: Alignment.bottomRight,
              //       child: Visibility(
              //         visible: _containerVisible,
              //         child: Image.asset("assets/buttonImage/products2.png",
              //             height: 35.h),
              //       ),
              //     )),
              SizedBox(
                height: 100.h,
              ),
              CustomButton(
                  text: "সেইভ",
                  onAction: () async {
                    if (moneyController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please Add Money", backgroundColor: Colors.red);
                    } else {
                      produstAndMoney(context);
                    }
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
