import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/give_work/work_list_details.dart';

class WorkListPage extends StatefulWidget {
  const WorkListPage({super.key});

  @override
  State<WorkListPage> createState() => _WorkListPageState();
}

class _WorkListPageState extends State<WorkListPage> {
  Future<void> deleteItem(selectedOrder) {
    return FirebaseFirestore.instance
        .collection('give-work')
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
            "কাজের লিস্ট",
            style: AllTextStyle().employeeName,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              //   InkWell(
              //   onTap: (){
              //
              //
              //
              //   },
              //   child: Image.asset("assets/buttonImage/search.png")),
              // SizedBox(height: 15.h,),

              Expanded(
                  child: Container(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("give-work")
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
                                      builder: (_) => WorkListDetails(
                                          name: data["name"],
                                          address: data['address'],
                                          fNid: data['father-nid'],
                                          item: data['item'],
                                          mNid: data['mother-nid'],
                                          money: data['money'],
                                          nid: data['nid'],
                                          phone: data['phone'],
                                          time: data['time'])));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(05.w),
                              child: Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(05.w),
                                  child: Row(
                                    children: [
                                      Text("${data["name"]}"),
                                      Spacer(),
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
