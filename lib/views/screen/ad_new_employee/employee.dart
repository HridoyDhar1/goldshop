import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

class AddNewEmployee extends StatefulWidget {
  AddNewEmployee({Key? key}) : super(key: key);

  @override
  State<AddNewEmployee> createState() => _AddNewEmployeeState();
}

class _AddNewEmployeeState extends State<AddNewEmployee> {
  final _nameController = TextEditingController();

  final _addressController = TextEditingController();

  final _numberController = TextEditingController();

  final _nidController = TextEditingController();

  final _fatherNidController = TextEditingController();

  final _motherNidController = TextEditingController();
  final _dateController = TextEditingController();

  final _form = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  addEmployee(context) async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference _employee = FirebaseFirestore.instance
          .collection('employee-list')
          .doc(currentUser)
          .collection('data');
      _employee.add({
        'name': _nameController.text,
        'address': _addressController.text,
        'phone': _numberController.text,
        'join_date': _dateController.text,
        'nid': _nidController.text,
        'father_nid': _fatherNidController.text,
        'mother_nid': _motherNidController.text,
      }).whenComplete(() {
        Fluttertoast.showToast(
            msg: "Employee added Successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  @override
  void initState() {
    super.initState();
    var date = _dateController.text;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _form,
            child: Column(
              children: [
                Lottie.asset("assets/files/employee.json", height: 200.w),
                // CircleAvatar(
                //   backgroundColor: Colors.grey.shade300,
                //   radius: 60.r,
                // ),
                SizedBox(height: 20.h),
                CustomTextField(
                    childText: "নাম",
                    labelText: "নাম",
                    keyBoardType: TextInputType.text,
                    controller: _nameController,
                    prefixIcon: const Icon(Icons.person)),
                SizedBox(height: 15.h),
                CustomTextField(
                    childText: "ঠিকানা",
                    labelText: "ঠিকানা",
                    keyBoardType: TextInputType.text,
                    controller: _addressController,
                    prefixIcon: const Icon(Icons.home)),
                SizedBox(height: 15.h),
                CustomTextField(
                    childText: "নাম্বার",
                    labelText: "নাম্বার",
                    keyBoardType: TextInputType.number,
                    controller: _numberController,
                    prefixIcon: const Icon(Icons.call)),
                SizedBox(height: 15.h),
                TextFormField(
                  controller: _dateController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      prefixIcon: const Icon(Icons.calendar_today),
                      labelText: "তারিখ"),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                    if (pickedDate != null) {
                      String formattedDate =
                          DateFormat("dd-MM-yyyy").format(pickedDate);

                      setState(() {
                        _dateController.text = formattedDate.toString();
                        var date = _dateController.text;
                      });
                    } else {
                      print("Not selected");
                    }
                  },
                ),
                SizedBox(height: 15.h),
                CustomTextField(
                    childText: "আনাইডি নাম্বার",
                    labelText: "আনাইডি নাম্বার",
                    keyBoardType: TextInputType.number,
                    controller: _nidController,
                    prefixIcon: const Icon(Icons.photo_album)),
                SizedBox(height: 15.h),
                CustomTextField(
                    childText: "পিতার আনাইডি নাম্বার",
                    labelText: "পিতার আনাইডি নাম্বার",
                    keyBoardType: TextInputType.number,
                    controller: _fatherNidController,
                    prefixIcon: const Icon(Icons.photo_album)),
                SizedBox(height: 15.h),
                CustomTextField(
                    childText: "মাতার আনাইডি নাম্বার",
                    labelText: "মাতার আনাইডি নাম্বার",
                    keyBoardType: TextInputType.number,
                    controller: _motherNidController,
                    prefixIcon: const Icon(Icons.photo_album)),
                SizedBox(height: 20.h),
                CustomButton(
                    text: "সেইভ",
                    onAction: () {
                      if (_form.currentState!.validate()) {
                        addEmployee(context);
                      }
                    })
              ],
            ),
          ),
        ),
      )),
    );
  }
}
