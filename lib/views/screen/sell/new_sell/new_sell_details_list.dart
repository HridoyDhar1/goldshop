// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';

class NewSellDetailsList extends StatefulWidget {
  var newSellDetails;
  NewSellDetailsList({Key? key, required this.newSellDetails})
      : super(key: key);

  @override
  State<NewSellDetailsList> createState() => _NewSellDetailsListState();
}

class _NewSellDetailsListState extends State<NewSellDetailsList> {
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
        centerTitle: true,
        title: const Text(
          "Sell Details",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                "Name : ${widget.newSellDetails["client-name"]}",
                style: AllTextStyle().goldName,
              ),
              SizedBox(height: 10.h),
              Text(
                "Address : ${widget.newSellDetails["client-address"]}",
                style: AllTextStyle().goldName,
              ),
              SizedBox(height: 10.h),
              Text(
                "Phone : ${widget.newSellDetails["client-phone"]}",
                style: AllTextStyle().goldName,
              ),
              SizedBox(height: 10.h),
              Text(
                "Date : ${widget.newSellDetails["date"]}",
                style: AllTextStyle().goldName,
              ),
              SizedBox(height: 20.h),
              widget.newSellDetails["first_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "1. ${widget.newSellDetails["first-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["first_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["first_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["first_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["first_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["second_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "2. ${widget.newSellDetails["second-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["second_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["second_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["second_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["second_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["third_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "3. ${widget.newSellDetails["third-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["third_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["third_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["third_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["third_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["four_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "4. ${widget.newSellDetails["four-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["four_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["four_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["four_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["four_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["five_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "5. ${widget.newSellDetails["five-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["five_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["five_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["five_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["five_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["six_vori"] != "0"
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.all(10.w),
                        child: Row(
                          children: [
                            Text(
                                "6. ${widget.newSellDetails["six-gold-type-name"]}",
                                style: AllTextStyle().goldName),
                            const Spacer(),
                            Text("${widget.newSellDetails["six_vori"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newSellDetails["six_ana"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newSellDetails["six_rothi"]}.",
                                style: AllTextStyle().goldName),
                            Text("${widget.newSellDetails["six_point"]}",
                                style: AllTextStyle().goldName),
                          ],
                        ),
                      ),
                    )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["seven_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "7. ${widget.newSellDetails["seven-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["seven_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["seven_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["seven_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["seven_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["eight_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "8. ${widget.newSellDetails["eight-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["eight_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["eight_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["eight_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["eight_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["nine_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "9. ${widget.newSellDetails["nine-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["nine_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["nine_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["nine_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["nine_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              widget.newSellDetails["ten_vori"] != "0"
                  ? Padding(
                    padding: EdgeInsets.all(10.w),
                    child: Row(
                      children: [
                        Text(
                            "10. ${widget.newSellDetails["ten-gold-type-name"]}",
                            style: AllTextStyle().goldName),
                        const Spacer(),
                        Text("${widget.newSellDetails["ten_vori"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["ten_ana"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["ten_rothi"]}.",
                            style: AllTextStyle().goldName),
                        Text("${widget.newSellDetails["ten_point"]}",
                            style: AllTextStyle().goldName),
                      ],
                    ),
                  )
                  : const SizedBox(),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Per vori price : ${widget.newSellDetails["tk"]} Taka",
                          style: AllTextStyle().goldName),
                      SizedBox(height: 10.h),
                      Text(
                          "Products price : ${widget.newSellDetails["products-price"]} Taka",
                          style: AllTextStyle().goldName),
                      SizedBox(height: 10.h),
                      Text(
                          "Total price : ${widget.newSellDetails["total-price"]} Taka",
                          style: AllTextStyle().goldName),
                      SizedBox(height: 10.h),
                      Text("Pay : ${widget.newSellDetails["pay"]} Taka",
                          style: AllTextStyle().goldName),
                      SizedBox(height: 10.h),
                      Text("Pay : ${widget.newSellDetails["mujuri"]} Taka",
                          style: AllTextStyle().goldName),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=>
                  //     SellImagePreviewPage(img: widget.newSellDetails["image"],)));
                },
                child: Container(
                  height: 200.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15.r),
                      image: DecorationImage(
                          image: NetworkImage(widget.newSellDetails["image"]),
                          fit: BoxFit.fitHeight)),
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(height: 60.h),
            ],
          ),
        ),
      ),
    );
  }
}
