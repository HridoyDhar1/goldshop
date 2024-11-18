// ignore_for_file: must_be_immutable, unused_field, override_on_non_overriding_member

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/widget/date_picker.dart';

import '../../const/widget/custom_button.dart';
import '../../const/widget/custom_text_field_four.dart';
import '../home_page/home.dart';

class NewMortgageSearchPageDetails extends StatefulWidget {
  var name;

  var address;
  var phone;
  var date;
  var parcent;
  var carret;
  var firstGoldName;
  var secondGoldName;
  var thirdGoldName;
  var fourGoldName;
  var fiveGoldName;
  var sixGoldName;
  var sevenGoldName;
  var eightGoldName;
  var nineGoldName;
  var tenGoldName;
  var totalWeight;
  var totalMoney;
  var firstVori;
  var secondVori;
  var thirdVori;
  var fourVori;
  var fiveVori;
  var sixVori;
  var sevenVori;
  var eightVori;
  var nineVori;
  var tenVori;

  var firstAna;
  var secondAna;
  var thirdAna;
  var fourAna;
  var fiveAna;
  var sixAna;
  var sevenAna;
  var eightAna;
  var nineAna;
  var tenAna;

  var firstRothi;
  var secondRothi;
  var thirdRothi;
  var fourRothi;
  var fiveRothi;
  var sixRothi;
  var sevenRothi;
  var eightRothi;
  var nineRothi;
  var tenRothi;

  var firstPoint;
  var secondPoint;
  var thirdPoint;
  var fourPoint;
  var fivePoint;
  var sixPoint;
  var sevenPoint;
  var eightPoint;
  var ninePoint;
  var tenPoint;


  NewMortgageSearchPageDetails({
    Key? key,
    required this.name,

    required this.address,
    required this.date,
    required this.phone,
    required this.firstGoldName,
    required this.secondGoldName,
    required this.thirdGoldName,
    required this.fourGoldName,
    required this.fiveGoldName,
    required this.sixGoldName,
    required this.sevenGoldName,
    required this.eightGoldName,
    required this.nineGoldName,
    required this.tenGoldName,
    required this.firstAna,
    required this.secondAna,
    required this.thirdAna,
    required this.fourAna,
    required this.fiveAna,
    required this.sixAna,
    required this.sevenAna,
    required this.eightAna,
    required this.nineAna,
    required this.tenAna,
    required this.firstVori,
    required this.secondVori,
    required this.thirdVori,
    required this.fourVori,
    required this.fiveVori,
    required this.sixVori,
    required this.sevenVori,
    required this.eightVori,
    required this.nineVori,
    required this.tenVori,
    required this.firstRothi,
    required this.secondRothi,
    required this.thirdRothi,
    required this.fourRothi,
    required this.fiveRothi,
    required this.sixRothi,
    required this.sevenRothi,
    required this.eightRothi,
    required this.nineRothi,
    required this.tenRothi,
    required this.firstPoint,
    required this.secondPoint,
    required this.thirdPoint,
    required this.fourPoint,
    required this.fivePoint,
    required this.sixPoint,
    required this.sevenPoint,
    required this.eightPoint,
    required this.ninePoint,
    required this.tenPoint,
    required this.totalMoney,
    required this.totalWeight,

    required this.parcent,
  }) : super(key: key);

  State<NewMortgageSearchPageDetails> createState() =>
      _NewMortgageSearchPageDetailsState();
}

class _NewMortgageSearchPageDetailsState
    extends State<NewMortgageSearchPageDetails> {
  bool _isVisible = false;
  bool _payVisible = false;
  bool _interestVisible = false;
  final _payController = TextEditingController();
  final _interestController = TextEditingController();
  final _dateController=TextEditingController();
  final _totalMoney = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  addMortgagePay(context) async {
    var currentUser = _auth.currentUser!.email;
    try {
      CollectionReference mortgagePay = FirebaseFirestore.instance
          .collection("mortgage-pay")
          .doc(currentUser)
          .collection("data");
      mortgagePay.add({
        'pay': _payController.text,
        'name': widget.name,
        'total-money': widget.totalMoney,
      }).whenComplete(() async {
        print("added");
        Fluttertoast.showToast(
            msg: "Successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const HomePage()));
      });
    } catch (e) {
      Fluttertoast.showToast(msg: "error $e");
    }
  }

  var finalTotalMoney;
  var restMoney;
  @override
  getTotalMoney() {
    setState(() {
      var a = _interestController.text.toString();
      var b = widget.totalMoney;
      finalTotalMoney = int.parse(a) + int.parse(b);
      print("final total money : ${finalTotalMoney}");
    });
  }

  getRestMoney() {
    setState(() {
      var p = _payController.text.toString();
      restMoney = finalTotalMoney - int.parse(p);
      print("Rest Money: ${restMoney}");
    });
  }

  @override
  void initState() {
    _interestController.text = '0';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: const Text(
          "New Mortgage Details",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
          child: Card(
            
            child: Padding(
              padding: EdgeInsets.all(20.w),
              child: SingleChildScrollView(
               
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Center(
                      child: CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 60.r,
                          backgroundImage:
                              const AssetImage("assets/images/profile.png")),
                    ),
                    Divider(),
                    SizedBox(height: 10.h),
                    Text("Name : ${widget.name}", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Address : ${widget.address}",
                        style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Phone : ${widget.phone}", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Date : ${widget.date}", style: AllTextStyle().goldName),
                    SizedBox(height: 20.h),
                    Divider(),
                   
                
            
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Name'),
                          Text('Carrat'),
                          Text('Weight')
                          ],
                      ),
                    ),
                    Divider(),
                    widget.firstVori != "0"
                        ? Padding(
                            padding: EdgeInsets.all(10.w),
                            child: Row(
                              children: [
                                Text("1. ${widget.firstGoldName}",
                                    style: AllTextStyle().goldName),
                                    Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                                const Spacer(),
                                Text("${widget.firstVori}.",
                                    style: AllTextStyle().goldName),
                                Text("${widget.firstAna}.",
                                    style: AllTextStyle().goldName),
                                Text("${widget.firstRothi}.",
                                    style: AllTextStyle().goldName),
                                Text("${widget.firstPoint}",
                                    style: AllTextStyle().goldName),
                              ],
                            ),
                          )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.secondVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("2. ${widget.secondGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.secondVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.secondAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.secondRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.secondPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.thirdVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("3. ${widget.thirdGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.thirdVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.thirdAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.thirdRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.thirdPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.fourVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("4. ${widget.fourGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.fourVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fourAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fourRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fourPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.fiveVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("5. ${widget.fiveGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.fiveVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fiveAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fiveRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.fivePoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.sixVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("6. ${widget.sixGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.sixVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sixAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sixRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sixPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.sevenVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("7. ${widget.sevenGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.sevenVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sevenAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sevenRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.sevenPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.eightVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("8. ${widget.eightGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.eightVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.eightAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.eightRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.eightPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.nineVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("9. ${widget.nineGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.nineVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.nineAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.nineRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.ninePoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    widget.tenVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("10. ${widget.tenGoldName}",
                                  style: AllTextStyle().goldName),
                                   Spacer(),
                                     Text(" ${widget.carret}",
                                    style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${widget.tenVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.tenAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.tenRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${widget.tenPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 20.h),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Weight : ${widget.totalWeight}",
                            style: AllTextStyle().goldName),
                        Text("Money : ${widget.totalMoney} TK",
                            style: AllTextStyle().goldName),
                          Text("Mortgage : ${widget.parcent} % 100",
                              style: AllTextStyle().goldName)
                      ],
                    ),
            
                    SizedBox(height: 40.h),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: Container(
                    //     height: 35.h,
                    //     width: 120.w,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10.r),
                    //         color: const Color(0xff68E1FD)
                    //     ),
                    //     child: Center(child: Text("Pay", style: AllTextStyle().goldName)),
                    //   ),
                    // ),
                    // SizedBox(height: 40.h),
            
                    Visibility(
                      visible: _payVisible,
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            "Pay :  ",
                            style: AllTextStyle().goldName,
                          ),
                          SizedBox(
                              width: 100.w,
                              child: CustomTextFieldFour(controller: _payController))
                        ],
                      ),
                    ),
                    
                    SizedBox(
                      height: 05.h,
                    ),
                    Visibility(
                      visible: _interestVisible,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              Text(
                                "Interest :  ",
                                style: AllTextStyle().goldName,
                              ),
                              SizedBox(
                                  width: 100.w,
                                  child: CustomTextFieldFour(
                                      controller: _interestController))
                            ],
                          ),
                          const SizedBox(height: 5,),
                           Visibility(
                      visible: _payVisible,
                      child: Row(
                        children: [
                          Spacer(),
                          Text(
                            "Date :  ",
                            style: AllTextStyle().goldName,
                          ),
                          SizedBox(
                              width: 100.w,
                              child: DatePickerTextField(controller: _dateController))
                        ],
                      ),
                    ),
                    
                          SizedBox(
                            height: 05.h,
                          ),
                          Visibility(
                            visible: _interestVisible,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 140.w,
                                      child: CustomButton(
                                          text: "Calculate",
                                          onAction: () {
                                            getTotalMoney();
                                          }),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 35.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.r),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          "Total : ${finalTotalMoney} Taka",
                                          style: AllTextStyle().goldName,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 05.h,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 140.w,
                                      child: CustomButton(
                                          text: "Calculate",
                                          onAction: () {
                                            if (_payController.text.isEmpty) {
                                              Fluttertoast.showToast(
                                                  msg: "Please Add Pay Money",
                                                  backgroundColor: Colors.red);
                                            } else {
                                              getRestMoney();
                                            }
                                          }),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 35.h,
                                      width: 160.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10.r),
                                          color: Colors.white),
                                      child: Center(
                                        child: Text(
                                          "Rest : ${restMoney} Taka",
                                          style: AllTextStyle().goldName,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Visibility(
                      visible: _isVisible,
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _payVisible = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "assets/images/pay.png",
                                      height: 30.h,
                                    ))
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                InkWell(
                                    onTap: () {
                                      setState(() {
                                        _interestVisible = true;
                                      });
                                    },
                                    child: Image.asset(
                                      "assets/images/interest.png",
                                      height: 30.h,
                                    ))
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                            text: "Submit",
                            onAction: () {
                              addMortgagePay(context);
                            }),
                            SizedBox(width: 20,),
                            CustomButton(
                            text: "Print",
                            onAction: () {
                              addMortgagePay(context);
                            }),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: Container(
                    //     height: 35.h,
                    //     width: 120.w,
                    //     decoration: BoxDecoration(
                    //         borderRadius: BorderRadius.circular(10.r),
                    //         color: const Color(0xff68E1FD)),
                    //     child: Center(
                    //         child: Text("Pay", style: AllTextStyle().goldName)),
                    //   ),
                    // ),
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff42EA92),
        onPressed: () {
          setState(() {
            _isVisible = !_isVisible;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
