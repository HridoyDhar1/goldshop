import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/search_pages/sell_search_details_page.dart';
import 'package:gold_manager_update/views/screen/search_pages/sell_search_page.dart';

class SellList extends StatefulWidget {
  const SellList({super.key});

  @override
  State<SellList> createState() => _SellListState();
}

class _SellListState extends State<SellList> {
  Future<void> deleteItem(selectedOrder) {
    return FirebaseFirestore.instance
        .collection('new-sell')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('data')
        .doc(selectedOrder)
        .delete()
        .then((value) => Fluttertoast.showToast(
            msg: "Deleted",
            backgroundColor: Colors.red,
            textColor: Colors.white));
  }

  @override
  void initState() {
    InterestitialAdHelper().myInterestitialAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            "বিক্রি লিস্ট",
            style: AllTextStyle().employeeName,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SellSearchPage()));
                  },
                  child: Image.asset("assets/buttonImage/search.png")),
              SizedBox(
                height: 15.h,
              ),
              Expanded(
                  child: Container(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("new-sell")
                        .doc(FirebaseAuth.instance.currentUser!.email)
                        .collection("data")
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text("Something went wrong"),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView(
                          children: snapshot.data!.docs.map(
                        (DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data() as Map<String, dynamic>;
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SellSearchDetailsPage(
                                            mujuri: data['mujuri'],
                                            name: data["name"],
                                            address: data["address"],
                                            date: data["date"],
                                            phone: data["phone"],
                                            firstGoldName:
                                                data["gold_type_first_name"],
                                            secondGoldName:
                                                data["gold_type_second_name"],
                                            thirdGoldName:
                                                data["gold_type_third_name"],
                                            fourGoldName:
                                                data["gold_type_four_name"],
                                            fiveGoldName:
                                                data["gold_type_five_name"],
                                            sixGoldName:
                                                data["gold_type_six_name"],
                                            sevenGoldName:
                                                data["gold_type_seven_name"],
                                            eightGoldName:
                                                data["gold_type_eight_name"],
                                            nineGoldName:
                                                data["gold_type_nine_name"],
                                            tenGoldName:
                                                data["gold_type_ten_name"],
                                            firstAna: data["first_ana"],
                                            secondAna: data["second_ana"],
                                            thirdAna: data["third_ana"],
                                            fourAna: data["four_ana"],
                                            fiveAna: data["five_ana"],
                                            sixAna: data["six_ana"],
                                            sevenAna: data["seven_ana"],
                                            eightAna: data["eight_ana"],
                                            nineAna: data["nine_ana"],
                                            tenAna: data["ten_ana"],
                                            firstVori: data["first_vori"],
                                            secondVori: data["second_vori"],
                                            thirdVori: data["third_vori"],
                                            fourVori: data["four_vori"],
                                            fiveVori: data["five_vori"],
                                            sixVori: data["six_vori"],
                                            sevenVori: data["seven_vori"],
                                            eightVori: data["eight_vori"],
                                            nineVori: data["nine_vori"],
                                            tenVori: data["ten_vori"],
                                            firstRothi: data["first_rothi"],
                                            secondRothi: data["second_rothi"],
                                            thirdRothi: data["third_rothi"],
                                            fourRothi: data["four_rothi"],
                                            fiveRothi: data["five_rothi"],
                                            sixRothi: data["six_rothi"],
                                            sevenRothi: data["seven_rothi"],
                                            eightRothi: data["eight_rothi"],
                                            nineRothi: data["nine_rothi"],
                                            tenRothi: data["ten_rothi"],
                                            firstPoint: data["first_point"],
                                            secondPoint: data["second_point"],
                                            thirdPoint: data["third_point"],
                                            fourPoint: data["four_point"],
                                            fivePoint: data["five_point"],
                                            sixPoint: data["six_point"],
                                            sevenPoint: data["seven_point"],
                                            eightPoint: data["eight_point"],
                                            ninePoint: data["nine_point"],
                                            tenPoint: data["ten_point"],
                                            totalMoney: data["tk"],
                                            pay: data["pay"],
                                            discount: data["discount"],
                                            img: data["image"],
                                            caret: data["caret"],
                                            perVori: data['tk'],
                                            productsprice:
                                                data['products-price'],
                                            totalprice: data['total-price'],
                                          )));
                            },
                            // child: Card(
                            //   child: ListTile(
                            //     title: Text(data["name"]),
                            //     trailing: Text(data["tk"]),

                            // ),

                            // ),
                            child: Padding(
                              padding: EdgeInsets.all(05.w),
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(05.w),
                                  child: Row(
                                    children: [
                                      Text(" ${data["name"]}"),
                                      Spacer(),
                                      Text("${data["pay"]} টাকা"),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog(
                                                  title: Text(
                                                      "Delete this item?",
                                                      style: TextStyle(
                                                          color: Colors.red)),
                                                  // content: Text("Order Added Successful"),
                                                  actions: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text("No")),
                                                    SizedBox(width: 20.w),
                                                    ElevatedButton(
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                                backgroundColor:
                                                                    Colors.red),
                                                        onPressed: () {
                                                          deleteItem(
                                                              document.id);
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text("Yes"))
                                                  ],
                                                );
                                              });
                                        },
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ).toList());
                    }),
              )),
              BannerAdContainer()
            ],
          ),
        ),
      ),
    );
  }
}
