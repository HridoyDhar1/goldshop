import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/Theme/all_text_style.dart';

class WorkListDetails extends StatefulWidget {
  final String address;
  final String fNid;
  final String mNid;
  final String item;
  final String money;
  final String name;
  final String nid;
  final String phone;
  final String time;
  // final String startDate; // Add startDate parameter
  // final String endDate; // Add endDate parameter

  WorkListDetails({
    Key? key,
    required this.name,
    required this.address,
    required this.fNid,
    required this.item,
    required this.mNid,
    required this.money,
    required this.nid,
    required this.phone,
    required this.time,
    // required this.startDate, // Initialize startDate
    // required this.endDate, // Initialize endDate
  }) : super(key: key);

  @override
  State<WorkListDetails> createState() => _WorkListDetailsState();
}

class _WorkListDetailsState extends State<WorkListDetails> {
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
          title: const Text(
            "কাজের তথ্য",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    Center(
                      child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 60.r,
                          backgroundImage: const AssetImage("assets/images/profile.png")),
                    ),
                    SizedBox(height: 30.h),
                    const Divider(),
                    Text("নাম : ${widget.name}", style: AllTextStyle().employeeName),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("ঠিকান : ${widget.address}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("নাম্বার : ${widget.phone}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("পিস : ${widget.item}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("সময় : ${widget.time}"),
                    const Divider(),
                    // SizedBox(height: 3.h),
                    // Text("শুরুর তারিখ : ${widget.startDate}"), // Display startDate
                    // const Divider(),
                    // SizedBox(height: 3.h),
                    // Text("শেষ তারিখ : ${widget.endDate}"), // Display endDate
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("টাকা : ${widget.money}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("আনাইডি নাম্বার : ${widget.nid}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("পিতার আনাইডি নাম্বার : ${widget.fNid}"),
                    const Divider(),
                    SizedBox(height: 3.h),
                    Text("মাতার আনাইডি নাম্বার : ${widget.mNid}"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
