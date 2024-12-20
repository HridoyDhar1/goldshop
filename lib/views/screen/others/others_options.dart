import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/ad_new_employee/employee.dart';
import 'package:gold_manager_update/views/screen/buy/buy_page.dart';
import 'package:gold_manager_update/views/screen/give_work/give_new_work.dart';
import 'package:gold_manager_update/views/screen/give_work/work_list.dart';
import 'package:gold_manager_update/views/screen/mortgage/add_mortgage/mortgage_option_page.dart';
import 'package:gold_manager_update/views/screen/others/others_pages/extra_cost.dart';
import 'package:gold_manager_update/views/screen/others/others_pages/products_and_money.dart';
import 'package:gold_manager_update/views/screen/pay/add_pay.dart';
import 'package:gold_manager_update/views/screen/sell/new_sell/new_sell.dart';


class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  State<Others> createState() => _OthersState();
}

class _OthersState extends State<Others> {
  @override
  void initState() {
    InterestitialAdHelper().myInterestitialAd();

    super.initState();
  }

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
        title: Text(
          "অন্যান",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            // Center(
            //     child: Lottie.asset("assets/files/cost2.json", height: 160.h)),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ProductsAndMoney()));
              },
              child:  Card(
                
                  child: ListTile(
                    
                                  leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.greenAccent,
                                  ),
                                  title: Text("টাকা জমা করুন"),
                                  trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.greenAccent,
                                  ),
                                )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GiveNewWork()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.greenAccent,
                ),
                title: Text("কাজ দিন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.greenAccent,
                ),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ExtraCost()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.greenAccent,
                ),
                title: Text("অন্যান খরচ করুন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.greenAccent,
                ),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddPay()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.greenAccent,
                ),
                title: Text("টাকা দিন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.greenAccent,
                ),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddNewBuy()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.purpleAccent,
                ),
                title: Text("কিনুন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color:Colors.purpleAccent,
                ),
              )),
            ),
             InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MortgageOptionPage()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.purpleAccent,
                ),
                title: Text("নতুন বন্ধক দিন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.purpleAccent,
                ),
              )),
            ),
            
             InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => NewSell()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.purpleAccent,
                ),
                title: Text("নতুন বিক্রি করুন"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.purpleAccent,
                ),
              )),
            ),
             InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddNewEmployee()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.purpleAccent,
                ),
                title: Text("নতুন কর্মচারী"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.purpleAccent,
                ),
              )),
            ),
             InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => WorkListPage()));
              },
              child: const Card(
                  child: ListTile(
                leading: Icon(
                  Icons.dashboard_sharp,
                  color: Colors.black,
                ),
                title: Text("কাজ করছে"),
                trailing: Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.black,
                ),
              )),
            )
          ],
        ),
      ),
      bottomNavigationBar: BannerAdContainer(),
    );
  }
}
