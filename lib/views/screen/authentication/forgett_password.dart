import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field.dart';
import 'package:lottie/lottie.dart';

import '../../const/Theme/all_text_style.dart';
import 'login_page.dart';

class EmailVerifyPage extends StatelessWidget {
  EmailVerifyPage({Key? key}) : super(key: key);


  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 90.h),
              Center(child: Lottie.asset("assets/files/login.json", height: 200.h)),
              SizedBox(height: 40.h),
              Center(
                child: Text(
                  "আপনার ইমেইল এড্রেস দিন । আপনার ইমেইলে পাসওয়ার্ড রিসেট করার জন্য একাট লিংক পাঠানো হবে। "
                      "আপনার ইমেইলের ইনবক্র চেক করুন, অথবা স্প্যাম অপশন চেক করে লিংক থেকে"
                      " সহজেই পাসওয়ার্ড রিসেট করে নিন ",
                  style: AllTextStyle().employeeName,
                ),
              ),
              SizedBox(height: 40.h),

              CustomTextField(
                  childText: "email@gmail.com",
                  labelText: "email@gmail.com",
                  keyBoardType: TextInputType.emailAddress,
                  controller: _emailController,
                  prefixIcon: Icon(Icons.email)
              ),


              SizedBox(
                height: 30.h,
              ),

              CustomButton(text: "Verify", onAction: (){
                FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text).then((value){
                  Fluttertoast.showToast(
                      msg: "Please check Email",
                      backgroundColor: Colors.green,
                      textColor: Colors.white);
                }).onError((error, stackTrace) {
                  Fluttertoast.showToast(
                      msg: error.toString(),
                      backgroundColor: Colors.red,
                      textColor: Colors.white);
                });
                Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPage()));
              }
              )

            ],
          ),
        ),
      ),
    );
  }
}
