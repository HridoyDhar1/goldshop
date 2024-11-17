import 'package:flutter/material.dart';
import 'package:gold_manager_update/views/screen/splash_screen/splash_screen_three.dart';

class SplashScrrenTwo extends StatefulWidget {
  const SplashScrrenTwo({super.key});

  @override
  State<SplashScrrenTwo> createState() => _SplashScrrenTwoState();
}

class _SplashScrrenTwoState extends State<SplashScrrenTwo> {
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
              child: Image.asset("assets/images/10839369_4542607.jpg"),
            )),
            Text(
              "Track, Sell, and Succeed with Ease",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            
            const SizedBox(height: 20),
            Text(
              "Encourage users about the app’s capability to handle sales seamlessly, supporting their business growth.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
            
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150,vertical: 15),
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: _onTapNext,
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.white),
                ))
  
          ],
        ),
      ),
    );
  }
    void _onTapNext(){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SplashScreenThree()));
  }
}
