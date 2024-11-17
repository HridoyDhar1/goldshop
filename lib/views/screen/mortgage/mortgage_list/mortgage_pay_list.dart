import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';

import '../../../const/Theme/all_text_style.dart';

class MortgagePayListPage extends StatefulWidget {
  const MortgagePayListPage({Key? key}) : super(key: key);

  @override
  State<MortgagePayListPage> createState() => _MortgagePayListPageState();
}

class _MortgagePayListPageState extends State<MortgagePayListPage> {
  Future<void> deleteItem(selectedOrder) {
    return FirebaseFirestore.instance
        .collection('mortgage-pay')
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.textFieldBgColor,
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
          "Mortgage Pay",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("mortgage-pay")
              .doc(FirebaseAuth.instance.currentUser!.email)
              .collection("data")
              .snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                return Padding(
                  padding: EdgeInsets.all(05.w),
                  child: Container(
                    height: 80,
                    width: 200,
                    color: Colors.white,
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Name: ${data["name"]}"),
                           Text("Date: ${data["date"]}"),
                        ],
                      ),
                      Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total : ${data["total-money"]}"),
                          Text("Interest : ${data["interest"]}"),

                        ],
                      ),
                      Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Pay : ${data["pay"]}"),
                          Text("Rest : ${data["rest-money"]}"),
                  
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text("Delete this item?",
                                      style: TextStyle(color: Colors.red)),
                                  // content: Text("Order Added Successful"),
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("No")),
                                    SizedBox(width: 20.w),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red),
                                        onPressed: () {
                                          deleteItem(document.id);
                                          Navigator.pop(context);
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
                  )),
                );
              },
            ).toList());
          }),
    );
  }
}
