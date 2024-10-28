import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/helper/email_auth.dart';
import 'package:gold_manager_update/views/screen/authentication/login_page.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';

import '../../const/Theme/app_color.dart';
import '../../const/widget/custom_button.dart';
import '../../const/widget/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final conformPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final _form = GlobalKey<FormState>();
  final countryController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  writeDataSignUp() async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference _user = FirebaseFirestore.instance
          .collection("user-information")
          .doc(currentUser)
          .collection("data");
      _user.add({
        'name': nameController.text,
        'email': emailController.text,
      }).whenComplete(() async {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomePage()));

        Fluttertoast.showToast(
            msg: " Data added",
            backgroundColor: AppColor.appColor,
            textColor: Colors.white);
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _form,
            child: Column(
              children: [
                SizedBox(
                  height: 250.h,
                  width: 250.w,
                  child: Center(child: Image.asset("assets/images/Login.gif")),
                ),
                SizedBox(height: 20.h),
                CustomTextField(
                    childText: " আপনার পুরো নাম লিখুন",
                    labelText: "নাম",
                    keyBoardType: TextInputType.text,
                    controller: nameController,
                    prefixIcon:
                        const Icon(Icons.person, color: AppColor.appColor)),
                SizedBox(height: 10.h),
                CustomTextField(
                    childText: "আপনার ইমেইল দিন",
                    labelText: "ইমেইল",
                    keyBoardType: TextInputType.emailAddress,
                    controller: emailController,
                    prefixIcon:
                        const Icon(Icons.email, color: AppColor.appColor)),
                SizedBox(height: 10.h),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                      labelText: "পাসওয়ার্ড",
                      hintText: "আপনার পাসওয়ার্ড দিন",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      prefixIcon:
                          const Icon(Icons.lock, color: AppColor.appColor),
                      prefixIconColor: AppColor.appColor),
                ),
                SizedBox(height: 10.h),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) return 'Empty';
                    if (val != passwordController.text) {
                      return 'Not Match';
                    }
                    return null;
                  },
                  controller: conformPasswordController,
                  decoration: InputDecoration(
                      labelText: "আবার পাসওয়ার্ড দিন",
                      hintText: "আবার পাসওয়ার্ড দিন",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      prefixIcon:
                          const Icon(Icons.lock, color: AppColor.appColor),
                      prefixIconColor: AppColor.appColor),
                ),
                SizedBox(height: 50.h),
                CustomButton(
                    text: "সাইন আপ",
                    onAction: () async {
                      if (_form.currentState!.validate()) {
                        final userEmail = emailController.text;
                        final userPass = passwordController.text;
                        final obj = AuthHelper();
                        obj
                            .signUp(userEmail, userPass, context)
                            .then((value) => writeDataSignUp());
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("আপনার আকাউন্ট আছে?",
                        style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: const Text(
                        "লগ ইন",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, color: Colors.blue),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
