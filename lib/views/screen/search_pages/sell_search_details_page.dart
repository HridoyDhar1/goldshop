// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/const/widget/custom_button.dart';

import 'package:gold_manager_update/views/screen/sell/new_sell/sell_image_preview.dart';

class SellSearchDetailsPage extends StatelessWidget {
  var name;
  var address;
  var phone;
  var date;
  
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
  var img;
  var discount;
  var pay;
  var caret;
  var mujuri;
  var perVori;
  var productsprice;
  var totalprice;

  SellSearchDetailsPage({
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
    required this.pay,
    required this.discount,
    required this.img,
    required this.caret,
    required this.mujuri,
    required this.perVori,
    required this.productsprice,
    required this.totalprice

  }) : super(key: key);

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
        title: const Text(
          "Sell Details",
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
                    Text("Name : ${name}", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Address : ${address}", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Phone : ${phone}", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Date : ${date}", style: AllTextStyle().goldName),
                    const SizedBox(height: 20),
                   const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                    Text('Name'),
                    Text('Carrat'),
                    Text('Weight')
                    ],
                                  ), SizedBox(height: 10.h),
                                  Divider(),
                    firstVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("1. ${firstGoldName}",
                                  style: AllTextStyle().goldName),
                                  const Spacer(),
                                   Text("${caret} K",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${firstVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${firstAna}.", style: AllTextStyle().goldName),
                              Text("${firstRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${firstPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    secondVori != "0"
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Row(
                                children: [
                                  Text("2. ${secondGoldName}",
                                      style: AllTextStyle().goldName),
                                  const Spacer(),
                                  Text("${secondVori}.",
                                      style: AllTextStyle().goldName),
                                  Text("${secondAna}.",
                                      style: AllTextStyle().goldName),
                                  Text("${secondRothi}.",
                                      style: AllTextStyle().goldName),
                                  Text("${secondPoint}",
                                      style: AllTextStyle().goldName),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    thirdVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("3. ${thirdGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${thirdVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${thirdAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${thirdRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${thirdPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    fourVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("4. ${fourGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${fourVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${fourAna}.", style: AllTextStyle().goldName),
                              Text("${fourRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${fourPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    fiveVori != "0"
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Row(
                                children: [
                                  Text("5. ${fiveGoldName}",
                                      style: AllTextStyle().goldName),
                                  const Spacer(),
                                  Text("${fiveVori}.",
                                      style: AllTextStyle().goldName),
                                  Text("${fiveAna}.", style: AllTextStyle().goldName),
                                  Text("${fiveRothi}.",
                                      style: AllTextStyle().goldName),
                                  Text("${fivePoint}",
                                      style: AllTextStyle().goldName),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    sixVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("6. ${sixGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${sixVori}.", style: AllTextStyle().goldName),
                              Text("${sixAna}.", style: AllTextStyle().goldName),
                              Text("${sixRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${sixPoint}", style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    sevenVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("7. ${sevenGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${sevenVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${sevenAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${sevenRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${sevenPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    eightVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("8. ${eightGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${eightVori}.",
                                  style: AllTextStyle().goldName),
                              Text("${eightAna}.",
                                  style: AllTextStyle().goldName),
                              Text("${eightRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${eightPoint}",
                                  style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    nineVori != "0"
                        ? Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: Colors.white),
                            child: Padding(
                              padding: EdgeInsets.all(10.w),
                              child: Row(
                                children: [
                                  Text("9. ${nineGoldName}",
                                      style: AllTextStyle().goldName),
                                  const Spacer(),
                                  Text("${nineVori}.",
                                      style: AllTextStyle().goldName),
                                  Text("${nineAna}.", style: AllTextStyle().goldName),
                                  Text("${nineRothi}.",
                                      style: AllTextStyle().goldName),
                                  Text("${ninePoint}",
                                      style: AllTextStyle().goldName),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox(),
                    SizedBox(height: 10.h),
                    tenVori != "0"
                        ? Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Row(
                            children: [
                              Text("10. ${tenGoldName}",
                                  style: AllTextStyle().goldName),
                              const Spacer(),
                              Text("${tenVori}.", style: AllTextStyle().goldName),
                              Text("${tenAna}.", style: AllTextStyle().goldName),
                              Text("${tenRothi}.",
                                  style: AllTextStyle().goldName),
                              Text("${tenPoint}", style: AllTextStyle().goldName),
                            ],
                          ),
                        )
                        : const SizedBox(),
                    SizedBox(height: 20.h),
            Divider(),
                    SizedBox(height: 10.h),
                    Text("Per vori price : ${totalMoney} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Products price : ${productsprice} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Total price : ${totalprice} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Discount : ${discount} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Pay : ${pay} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 10.h),
                    Text("Mujuri : ${mujuri} Taka", style: AllTextStyle().goldName),
                    SizedBox(height: 20.h),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> SellImagePreviewPage(
                          img: img,
                        )));
                      },
                      child: Container(
                        height: 200.h,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(15.r),
                          image: DecorationImage(image: NetworkImage(img),fit: BoxFit.fitHeight)
                        ),
                      ),
                    ),
                    SizedBox(height: 60.h),
            Center(
              
              child: CustomButton(text: "Print", onAction: (){
                // createPDF();
              }))
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
