import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/search_pages/pay_list_search.dart';

class PayList extends StatefulWidget {
  const PayList({super.key});

  @override
  State<PayList> createState() => _PayListState();
}

class _PayListState extends State<PayList> {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  FirebaseAuth _auth = FirebaseAuth.instance;
  List payListData = [];

  getPayListData() async {
    QuerySnapshot qn = await _firebaseFirestore
        .collection("pay")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        payListData.add({
          'name': qn.docs[i]["name"],
          'number': qn.docs[i]["number"],
          'date': qn.docs[i]["date"],
          'money': qn.docs[i]["money"],
        });
      }
    });
  }

  @override
  void initState() {
    getPayListData();
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
          "টাকা দেয়ার লিস্ট : ${payListData.length.toString()}",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.r),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => PayListSearch()));
                },
                child: Image.asset("assets/buttonImage/search.png")),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: payListData.length,
                    itemBuilder: (context, index) {
                      return Bounceable(
                        onTap: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (_)=> NewSellDetailsList(
                          //     newSellDetails: newSellList[index])));
                        },
                        child: payListData.isEmpty
                            ? const Center(child: Text("No Data Found"))
                            : Padding(
                                padding: EdgeInsets.symmetric(vertical: 02.h),
                                child: Card(
                                    child: ListTile(
                                  title: Text(
                                      "${index + 1}. ${payListData[index]["name"]}"),
                                      subtitle:Text("Date: ${payListData[index]["date"]}") ,
                                  trailing: Text(
                                      "${payListData[index]["money"]} টাকা"
                                          .toString()),
                                )),
                              ),
                      );
                    })),
            BannerAdContainer()
          ],
        ),
      ),
    );
  }
}
