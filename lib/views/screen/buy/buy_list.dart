import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:lottie/lottie.dart';

class BuyListPage extends StatefulWidget {
  const BuyListPage({super.key});

  @override
  State<BuyListPage> createState() => _BuyListPageState();
}

class _BuyListPageState extends State<BuyListPage> {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  List buyListData = [];

  getBuyListData() async {
    QuerySnapshot qn = await _firebaseFirestore
        .collection("new-buy")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        buyListData.add({
          'date': qn.docs[i]["date"],
          'weight': qn.docs[i]["total_weight"],
          'money': qn.docs[i]["money"],
        });
      }
    });
  }

  @override
  void initState() {
    getBuyListData();
    InterestitialAdHelper().myInterestitialAd();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textFieldBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "কিনার লিস্ট",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            Center(
                child: Lottie.asset('assets/files/list.json', height: 200.h)),
            Container(
              height: 30.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("তারিখ"),
                    Text("ওজন"),
                    Text("টাকা"),
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: buyListData.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.all(05.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(buyListData[index]["date"].toString()),
                      SizedBox(
                        width: 80.w,
                      ),
                      Text(buyListData[index]["weight"].toString()),
                      Spacer(),
                      Text(buyListData[index]["money"].toString()),
                    ],
                  ),
                );
              },
            )),
            BannerAdContainer()
          ],
        ),
      ),
    );
  }
}
