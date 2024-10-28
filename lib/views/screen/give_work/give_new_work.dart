import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_six.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_filed_five.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';
import 'package:lottie/lottie.dart';

class GiveNewWork extends StatefulWidget {
  GiveNewWork({super.key});

  @override
  State<GiveNewWork> createState() => _GiveNewWorkState();
}

class _GiveNewWorkState extends State<GiveNewWork> {
  final _itemController = TextEditingController();

  final _timeController = TextEditingController();

  final _moneyController = TextEditingController();

  final _nameController = TextEditingController();

  final _addressController = TextEditingController();

  final _numberController = TextEditingController();

  final _nidController = TextEditingController();

  final _fatherNidController = TextEditingController();

  final _motherNidController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  workData() async {
    CollectionReference _work = FirebaseFirestore.instance
        .collection("give-work")
        .doc(_auth.currentUser!.email)
        .collection("data");
    setState(() {
      _work.add({
        'name': _nameController.text,
        'address': _addressController.text,
        'phone': _numberController.text,
        'nid': _nidController.text,
        'father-nid': _fatherNidController.text,
        'mother-nid': _motherNidController.text,
        'item': _itemController.text,
        'time': _timeController.text,
        'money': _moneyController.text,
      }).whenComplete(() {
        Fluttertoast.showToast(
            msg: "Successful", backgroundColor: Colors.green);
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
      });
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
          "কাজ দিন",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                  child:
                      Lottie.asset("assets/files/hiring.json", height: 120.h)),
              Divider(),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFieldSix(
                  childText: "নাম",
                  keyboardType: TextInputType.text,
                  controller: _nameController,
                  prefixIcon: Icon(Icons.person)),
              SizedBox(
                height: 05.h,
              ),
              CustomTextFieldSix(
                  childText: "ঠিকান",
                  keyboardType: TextInputType.text,
                  controller: _addressController,
                  prefixIcon: Icon(Icons.home)),
              SizedBox(
                height: 05.h,
              ),
              CustomTextFieldSix(
                  childText: "নাম্বার",
                  keyboardType: TextInputType.number,
                  controller: _numberController,
                  prefixIcon: Icon(Icons.call)),
              SizedBox(
                height: 05.h,
              ),
              CustomTextFieldSix(
                  childText: "আনাইডি নাম্বার",
                  keyboardType: TextInputType.number,
                  controller: _nidController,
                  prefixIcon: Icon(Icons.dock_outlined)),
              SizedBox(
                height: 05.h,
              ),
              CustomTextFieldSix(
                  childText: "পিতার আনাইডি নাম্বার",
                  keyboardType: TextInputType.number,
                  controller: _fatherNidController,
                  prefixIcon: Icon(Icons.dock_outlined)),
              SizedBox(
                height: 05.h,
              ),
              CustomTextFieldSix(
                  childText: "মাতার আনাইডি নাম্বার",
                  keyboardType: TextInputType.number,
                  controller: _motherNidController,
                  prefixIcon: Icon(Icons.dock_outlined)),
              SizedBox(
                height: 10.h,
              ),
              Column(children: [
                Align(alignment: Alignment.bottomLeft,child: Text('জিনিস '),),
                SizedBox(width: 200),
                CustomTextFieldFive(controller: _itemController, keyboardType: TextInputType.text),
                const SizedBox(height: 10),
                Align(alignment: Alignment.bottomLeft,child: Text('সময় '),),
                SizedBox(width: 200),
                CustomTextFieldFive(controller: _timeController, keyboardType: TextInputType.text),
                const SizedBox(height: 10),
                Align(alignment: Alignment.bottomLeft,child: Text('টাকা'),),
                SizedBox(width: 200),
                CustomTextFieldFive(controller: _moneyController, keyboardType: TextInputType.text),
 
              // const SizedBox(height: 10),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Text('শুরুর তারিখ'),
              // ),
              // Row(
              //   children: [
              //     Expanded(
              //       child: CustomTextFieldFive(
              //         controller: _startDateController,
              //         keyboardType: TextInputType.text,
              //       ),
              //     ),
              //     IconButton(
              //       icon: Icon(Icons.calendar_today),
              //       onPressed: () => _selectDate(context, _startDateController),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 10),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Text('শেষ তারিখ'),
              // ),
              ],),
             
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  text: "সেইভ",
                  onAction: () {
                    workData();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
