import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';

class PayListSearch extends StatefulWidget {
  const PayListSearch({super.key});

  @override
  State<PayListSearch> createState() => _PayListSearchState();
}

class _PayListSearchState extends State<PayListSearch> {
  var inputText = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.textFieldBgColor,
        body: Padding(
          padding: EdgeInsets.all(15.r),
          child: Column(
            children: [
              CupertinoSearchTextField(
                onChanged: (val) {
                  setState(() {
                    inputText = val;
                  });
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                  child: StreamBuilder(
                      stream: FirebaseFirestore.instance
                          .collection("pay")
                          .doc(FirebaseAuth.instance.currentUser!.email)
                          .collection("data").where("name", isEqualTo: inputText)
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return Center(
                            child: Text("Something went wrong"),
                          );
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return ListView(
                            children: snapshot.data!.docs.map(
                          (DocumentSnapshot document) {
                            Map<String, dynamic> data =
                                document.data() as Map<String, dynamic>;
                            return Card(
                                child: ListTile(
                              title: Text("${data["name"]}"),
                              trailing: Text("${data["money"]} Tk".toString()),
                            ));
                          },
                        ).toList());
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
