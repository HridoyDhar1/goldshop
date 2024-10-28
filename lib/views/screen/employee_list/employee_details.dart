import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';

class EmployeeDetails extends StatefulWidget {
  var employeeDetails;
  EmployeeDetails(employeeList, {Key? key, required this.employeeDetails})
      : super(key: key);

  @override
  State<EmployeeDetails> createState() => _EmployeeDetailsState();
}

class _EmployeeDetailsState extends State<EmployeeDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.scaffoldColor,
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
            "কর্মচারী তথ্য",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
            // height: 500.h,
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
                          backgroundImage:
                              const AssetImage("assets/images/profile.png")),
                    ),
                    SizedBox(height: 30.h),
                    const Divider(),
                    Text(
                      "নাম : ${widget.employeeDetails["client-name"]}",
                      style: AllTextStyle().employeeName,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("ঠিকানা : ${widget.employeeDetails["address"]}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("নাম্বার : ${widget.employeeDetails["phone"]}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("যোগ দিয়েছে : ${widget.employeeDetails["join-date"]}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text("আনাইডি নাম্বার : ${widget.employeeDetails["nid"]}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text(
                        "পিতার আনাইডি নাম্বার : ${widget.employeeDetails["father-nid"]}"),
                    SizedBox(
                      height: 03.h,
                    ),
                    const Divider(),
                    SizedBox(
                      height: 03.h,
                    ),
                    Text(
                        "মাতার আনাইডি নাম্বার : ${widget.employeeDetails["mother-nid"]}"),
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
