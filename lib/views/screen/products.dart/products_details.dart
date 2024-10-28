
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';


class ProductsDetails extends StatefulWidget {
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {

  @override
  void initState() {
  InterestitialAdHelper().myInterestitialAd();
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.textFieldBgColor,
        body: Padding(
          padding: EdgeInsets.all(50.w),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
              ),
              Center(
                child: Card(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        "Gold",
                        style: TextStyle(
                            color: Color(0xffFFCC28),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10.h),
                      Text("0.0.0.0"),
                    ],
                  ),
                )),
              ),
              SizedBox(
                height: 20.h,
              ),
              ListTile(
                title: Text("Previous"),
                trailing: Text("0.0.0.0"),
              ),
              ListTile(
                title: Text("Sell"),
                trailing: Text("0.0.0.0"),
              ),
              ListTile(
                title: Text("Buy"),
                trailing: Text("0.0.0.0"),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       getPVori();
              //       getPAna();
              //       getProthi();
              //       getPPoint();
              //     },
              //     child: Text("check")),
            ],
          ),
        ),
        bottomNavigationBar: BannerAdContainer(),
      ),
    );
  }
}
