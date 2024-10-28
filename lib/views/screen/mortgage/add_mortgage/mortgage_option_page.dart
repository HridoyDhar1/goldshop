import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/screen/mortgage/add_mortgage/new_mortrage.dart';

import 'package:lottie/lottie.dart';
import '../../../const/Theme/all_text_style.dart';

class MortgageOptionPage extends StatefulWidget {
  MortgageOptionPage({Key? key}) : super(key: key);

  @override
  State<MortgageOptionPage> createState() => _MortgageOptionPageState();
}

class _MortgageOptionPageState extends State<MortgageOptionPage> {
  @override
  void initState() {
    InterestitialAdHelper().myInterestitialAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "বন্ধক সিলেক্ট করুন",
            style: AllTextStyle().employeeName,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              Lottie.asset("assets/files/gold2.json", height: 200.h),
              Bounceable(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NewMortgage()));
                },
                child: const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.dashboard_sharp,
                      color: Colors.redAccent,
                    ),
                    title: Text("নতুন বন্ধক"),
                    trailing: Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.greenAccent,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BannerAdContainer(),
      ),
    );
  }
}
