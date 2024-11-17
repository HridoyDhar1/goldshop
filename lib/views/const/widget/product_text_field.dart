
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/widget/custom_text_field_three.dart';

class productTextField extends StatelessWidget {
  const productTextField({
    super.key,
    required this.textfield_count,
    required this.controller1,
    required this.controller2,
    required this.controller3,
    required this.controller4,
    required this.controller5,
    required this.controller6,
    required this.controller7,
    required this.controller8,
    required this.controller9,
    required this.controller10,
    required this.controller41,
    required this.controller12,
    required this.controller13,
    required this.controller14,
    required this.controller15,
    required this.controller17,
    required this.controller18,
    required this.controller19,
    required this.controller20,
    required this.controller22,
    required this.controller23,
    required this.controller24,
    required this.controller25,
    required this.controller27,
    required this.controller28,
    required this.controller29,
    required this.controller30,
    required this.controller32,
    required this.controller33,
    required this.controller34,
    required this.controller35,
    required this.controller37,
    required this.controller38,
    required this.controller39,
    required this.controller40,
    required this.controller42,
    required this.controller43,
    required this.controller44,
    required this.controller45,
    required this.controller46,
    required this.controller47,
    required this.controller48,
    required this.controller49,
    required this.controller50, required this.carretController1, required this.carretController2, required this.carretController3, required this.carretController4, required this.carretController5, required this.carretController6, required this.carretController7, required this.carretController8, required this.carretController9, required this.carretController10, required this.carretController11, required this.carretController12, required TextEditingController carretController,

  });

  final int textfield_count;
    final TextEditingController carretController1 ;
        final TextEditingController carretController2 ;
         final TextEditingController carretController3 ;
        final TextEditingController carretController4 ;
         final TextEditingController carretController5 ;
        final TextEditingController carretController6 ;
         final TextEditingController carretController7 ;
        final TextEditingController carretController8 ;
         final TextEditingController carretController9 ;
        final TextEditingController carretController10 ;
         final TextEditingController carretController11 ;
        final TextEditingController carretController12 ;

  final TextEditingController controller1;
  final TextEditingController controller2;
  final TextEditingController controller3;
  final TextEditingController controller4;
  final TextEditingController controller5;
  final TextEditingController controller6;
  final TextEditingController controller7;
  final TextEditingController controller8;
  final TextEditingController controller9;
  final TextEditingController controller10;
  final TextEditingController controller41;
  final TextEditingController controller12;
  final TextEditingController controller13;
  final TextEditingController controller14;
  final TextEditingController controller15;
  final TextEditingController controller17;
  final TextEditingController controller18;
  final TextEditingController controller19;
  final TextEditingController controller20;
  final TextEditingController controller22;
  final TextEditingController controller23;
  final TextEditingController controller24;
  final TextEditingController controller25;
  
  final TextEditingController controller27;
  final TextEditingController controller28;
  final TextEditingController controller29;
  final TextEditingController controller30;
  final TextEditingController controller32;
  final TextEditingController controller33;
  final TextEditingController controller34;
  final TextEditingController controller35;
  final TextEditingController controller37;
  final TextEditingController controller38;
  final TextEditingController controller39;
  final TextEditingController controller40;
  final TextEditingController controller42;
  final TextEditingController controller43;
  final TextEditingController controller44;
  final TextEditingController controller45;
  final TextEditingController controller46;
  final TextEditingController controller47;
  final TextEditingController controller48;
  final TextEditingController controller49;
  final TextEditingController controller50;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        textfield_count > 0
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "Name",
                          keyBoardType: TextInputType.text,
                          controller: controller1,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController2,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller2,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller3,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller4,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller5,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 1
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller6,
                        ),
                      ),
                       const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController3,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller7,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller8,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller9,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller10,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 2
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController4,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller12,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller13,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller14,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller15,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 3
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController4,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller17,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller18,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller19,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller20,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 4
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController5,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller22,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller23,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller24,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller25,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 5
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController6,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller27,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller28,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller29,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller30,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 6
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController7,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller32,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller33,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller34,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller35,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 7
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController8,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller37,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller38,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller39,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller40,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 8
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller41,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController9,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller42,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller43,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller44,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller45,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 9
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller46,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController10,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller47,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller48,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller49,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller50,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 10
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller46,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController11,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller47,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller48,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller49,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller50,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 11
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller46,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController12,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller47,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller48,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller49,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller50,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
        SizedBox(height: 20.h),
        textfield_count > 12
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 150.w,
                        child: CustomTextFieldThree(
                          labelText: "নাম",
                          keyBoardType: TextInputType.text,
                          controller: controller46,
                        ),
                      ),
                      const SizedBox(width: 20,),
                        SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: carretController12,
                        decoration: InputDecoration(
                          hintText: "Carrat",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                        )),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "ভরি",
                          keyBoardType: TextInputType.number,
                          controller: controller47,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "আনা",
                          keyBoardType: TextInputType.number,
                          controller: controller48,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "রত্তি",
                          keyBoardType: TextInputType.number,
                          controller: controller49,
                        ),
                      ),
                      SizedBox(
                        width: 70.w,
                        child: CustomTextFieldThree(
                          labelText: "পয়েন্ট",
                          keyBoardType: TextInputType.number,
                          controller: controller50,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : const SizedBox(),
      ],
    );
  }
}
