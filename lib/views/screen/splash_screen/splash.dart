import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gold_manager_update/views/screen/authentication/sign_up.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //  box.erase();
    Timer(const Duration(seconds: 4), () => chooseScreen(context));
    super.initState();
  }

  final box = GetStorage();

  chooseScreen(context) async {
    var userId = await box.read('id');
    if (userId != null) {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const HomePage()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (_) => const SignUpPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorizeTextStyle = TextStyle(
        fontSize: 25.sp,
        fontFamily: 'Low Budget',
        fontWeight: FontWeight.bold,
        letterSpacing: 2);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/appicon.png",
              height: 150.h,
            ),
            // Lottie.asset("assets/files/gold2.json", height: 200.h,width:200.w),
            AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'GoldShop Manager',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'GoldShop Manager',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'GoldShop Manager',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            )
          ],
        ),
      ),
    );
  }
}

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];
