import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/screen/authentication/forgett_password.dart';
import 'package:gold_manager_update/views/screen/authentication/sign_up.dart';
import '../../../helper/email_auth.dart';
import '../../const/Theme/app_color.dart';
import '../../const/widget/custom_button.dart';
import '../../const/widget/custom_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _form = GlobalKey<FormState>();

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
                    childText: "আপনার ইমেইল দিন",
                    labelText: 'ইমেইল',
                    keyBoardType: TextInputType.emailAddress,
                    controller: _emailController,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: AppColor.appColor,
                    )),
                SizedBox(height: 20.h),
                CustomTextField(
                    childText: "আপনার পাসওয়ার্ড দিন",
                    labelText: 'পাসওয়ার্ড',
                    keyBoardType: TextInputType.text,
                    controller: _passwordController,
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: AppColor.appColor,
                    )),
                SizedBox(height: 05.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => EmailVerifyPage()));
                    },
                    child: const Text(
                      "পাসওয়ার্ড ভুলে গেছেন?",
                      style: TextStyle(color: AppColor.appColor),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                CustomButton(
                    text: "লগ ইন",
                    onAction: () async {
                      if (_form.currentState!.validate()) {
                        final userEmail = _emailController.text;
                        final userPass = _passwordController.text;
                        final obj = AuthHelper();
                        obj.login(userEmail, userPass, context);
                        print("Added");
                        // Navigator.push(context, MaterialPageRoute(builder: (_)=>BottomController()));
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("আপনার আকাউন্ট নেই?",
                        style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUpPage()));
                      },
                      child: const Text(
                        "সাইন আপ",
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
