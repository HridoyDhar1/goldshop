import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/screen/employee_list/employee_details.dart';
import 'package:lottie/lottie.dart';

import '../../const/Theme/all_text_style.dart';

class EmployeeList extends StatefulWidget {
  const EmployeeList({Key? key}) : super(key: key);

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  final List _employeeList = [];
  final _firestoreInstance = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  fetchemployee() async {
    QuerySnapshot qn = await _firestoreInstance
        .collection("employee-list")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _employeeList.add({
          "client-name": qn.docs[i]["name"],
          "address": qn.docs[i]["address"],
          "phone": qn.docs[i]["phone"],
          "join-date": qn.docs[i]["join_date"],
          "nid": qn.docs[i]["nid"],
          "father-nid": qn.docs[i]["father_nid"],
          "mother-nid": qn.docs[i]["mother_nid"],
        });
      }
    });
    return qn.docs;
  }

  @override
  void initState() {
    fetchemployee();
    InterestitialAdHelper().myInterestitialAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "কর্মচারী লিস্ট : ${_employeeList.length.toString()}",
            style: AllTextStyle().employeeName,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            children: [
              Lottie.asset("assets/files/employee_list.json", width: 200.w),
              Expanded(
                  child: ListView.builder(
                      itemCount: _employeeList.length,
                      itemBuilder: (context, index) {
                        return Bounceable(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => EmployeeDetails(
                                          _employeeList[index],
                                          employeeDetails: _employeeList[index],
                                        )));
                            // print(_employeeList[index]);
                          },
                          child: _employeeList.isEmpty
                              ? const Text("No Data Found")
                              : Padding(
                                  padding: EdgeInsets.symmetric(vertical: 02.h),
                                  child: Card(
                                      child: ListTile(
                                    leading: const Icon(
                                      Icons.person,
                                      color: Colors.greenAccent,
                                    ),
                                    title: Text(
                                        "${_employeeList[index]["client-name"]}"),
                                    trailing: const Icon(
                                        Icons.arrow_forward_outlined,
                                        color: Colors.greenAccent),
                                  )),
                                ),
                        );
                      })),
              BannerAdContainer()
            ],
          ),
        ));
  }
}
