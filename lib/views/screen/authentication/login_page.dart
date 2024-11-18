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
                const SizedBox(
                  height: 80,
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/images/appicon.png"),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: const Text('Hey', style: TextStyle(fontSize: 30))),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: const Text("Welcome back !",
                      style: TextStyle(fontSize: 30, color: Colors.grey)),
                ),
                SizedBox(height: 50.h),
                CustomTextField(
                    childText: "Enter your email",
                    labelText: 'Email',
                    keyBoardType: TextInputType.emailAddress,
                    controller: _emailController,
                    prefixIcon: const Icon(
                      Icons.email,
                      color: AppColor.appColor,
                    )),
                SizedBox(height: 20.h),
                CustomTextField(
                    childText: "Enter your password",
                    labelText: 'Password',
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
                      "Forget pasword",
                      style: TextStyle(color: Color.fromARGB(255, 245, 6, 6)),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                CustomButton(
                    text: "Login",
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
                    const Text("Haven't any account !",
                        style: TextStyle(color: Colors.black)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUpPage()));
                      },
                      child: const Text(
                        "Singup",
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
