import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_five.dart';
import 'package:gold_manager_update/views/const/widget/date_picker.dart';

import 'package:gold_manager_update/views/screen/home_page/home.dart';
import 'package:lottie/lottie.dart';

class AddPay extends StatefulWidget {
  AddPay({Key? key}) : super(key: key);

  @override
  State<AddPay> createState() => _AddPayState();
}

class _AddPayState extends State<AddPay> {
  final _dateController = TextEditingController();

  final _nameController = TextEditingController();

  final _numberController = TextEditingController();

  final _moneyContoller = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  pay(context) async {
    try {
      CollectionReference _payData = FirebaseFirestore.instance
          .collection("pay")
          .doc(_auth.currentUser!.email)
          .collection("data");
      _payData.add({
        'date': _dateController.text,
        'name': _nameController.text,
        'number': _numberController.text,
        'money': _moneyContoller.text,
      }).whenComplete(() {
        Fluttertoast.showToast(
            msg: "Successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  @override
  void initState() {
    super.initState();
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
          "টাকা দিন",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Lottie.asset("assets/files/pay1.json", height: 150.h),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Container(
                    width: 100.w,
                    color: Colors.white,
                    child: CustomDatePicker(controller: _dateController),
                  )
                ],
              ),
              SizedBox(height: 20.h),
              CustomTextFieldFive(
                  childText: "নাম",
                  keyboardType: TextInputType.text,
                  controller: _nameController,
                  prefixIcon: const Icon(Icons.person)),
              SizedBox(height: 10.h),
              CustomTextFieldFive(
                  childText: "নাম্বার",
                  keyboardType: TextInputType.number,
                  controller: _numberController,
                  prefixIcon: const Icon(Icons.call)),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Spacer(),
                  SizedBox(
                    width: 150.w,
                    child: CustomTextFieldFive(
                        childText: "00",
                        keyboardType: TextInputType.number,
                        controller: _moneyContoller,
                        prefixIcon: const Icon(Icons.attach_money)),
                  )
                ],
              ),
              SizedBox(height: 30.h),
              CustomButton(
                  text: "সেইভ",
                  onAction: () {
                    if (_moneyContoller.text.isEmpty) {
                      Fluttertoast.showToast(msg: "Please input Money");
                    } else {
                      pay(context);
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
