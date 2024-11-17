import 'package:flutter/material.dart';
import 'package:gold_manager_update/views/screen/splash_screen/splash_scrren_two.dart';

class SplashScreenOne extends StatefulWidget {
  const SplashScreenOne({super.key});

  @override
  State<SplashScreenOne> createState() => _SplashScreenOneState();
}

class _SplashScreenOneState extends State<SplashScreenOne> {
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
              child: Image.asset("assets/images/82464611_9886188.jpg"),
            )),
            Text(
              "Effortless Management for Precious Inventory",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
           
            const SizedBox(height: 20),
            Text(
              "Emphasize simplicity and efficiency in managing gold inventory and transactions.",
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
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SplashScrrenTwo()));
  }
}
