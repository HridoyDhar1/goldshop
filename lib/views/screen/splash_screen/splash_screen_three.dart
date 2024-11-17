import 'package:flutter/material.dart';
import 'package:gold_manager_update/views/screen/authentication/login_page.dart';
import 'package:gold_manager_update/views/screen/authentication/sign_up.dart';

class SplashScreenThree extends StatefulWidget {
  const SplashScreenThree({super.key});

  @override
  State<SplashScreenThree> createState() => _SplashScreenThreeState();
}

class _SplashScreenThreeState extends State<SplashScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Center(
                child: Container(
              height: 400,
              width: 400,
              child: Image.asset("assets/images/20124662_6233047.jpg"),
            )),
            Text(
              "Welcome To",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "GoldShop Manager App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "Highlight reliability and trust in managing valuable assets, giving users confidence.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: _onTapSingIn,
                    child: Text(
                      "Singin",
                      style: TextStyle(color: Colors.white),
                    )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: _onTapSingUp,
                  child: Text(
                    'Singup',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapSingIn() {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginPage()));
  }
    void _onTapSingUp() {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUpPage()));
  }
}
