import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/views/screen/ad_new_employee/employee.dart';
import 'package:gold_manager_update/views/screen/buy/buy_list.dart';
import 'package:gold_manager_update/views/screen/calculator/calculator.dart';
import 'package:gold_manager_update/views/screen/employee_list/employee_list.dart';
import 'package:gold_manager_update/views/screen/give_work/work_list.dart';
import 'package:gold_manager_update/views/screen/income.dart/income_details.dart';
import 'package:gold_manager_update/views/screen/mortgage/add_mortgage/mortgage_option_page.dart';
import 'package:gold_manager_update/views/screen/mortgage/mortgage_list/mortgae_option.dart';
import 'package:gold_manager_update/views/screen/others/others_options.dart';
import 'package:gold_manager_update/views/screen/pay/pay_list.dart';
import 'package:gold_manager_update/views/screen/sell/new_sell/new_sell.dart';
import 'package:gold_manager_update/views/screen/sell/new_sell/sell_list.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import '../../const/Theme/app_color.dart';
import '../../const/widget/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late StreamSubscription subscription;
  bool isDeviceConnected = false;
  bool isAlertSet = false;

  checkConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("No Connection", style: TextStyle(color: Colors.red)),
              content: Text("Please check your internet connection"),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Ok"))
              ],
            );
          });
    }
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
        (ConnectivityResult result) async {
          isDeviceConnected = await InternetConnectionChecker().hasConnection;
          if (!isDeviceConnected && isAlertSet == false) {
            showDialogBox();
            setState(() => isAlertSet = true);
          }
        },
      );

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }

  // all list start
  List productsMoneyList = [];
  List _productsMoney = [];
  List<int> _productsMoneyFinal = [];

  List mortgagePayMoneyList = [];
  List _mortgagePayMoney = [];
  List<int> _mortgagePayMoneyFinal = [];

  List sellMoneyList = [];
  List _sellMoney = [];
  List<int> _sellMoneyFinal = [];

  List mortgageMoneyList = [];
  List _mortgageMoney = [];
  List<int> _mortgageMoneyFinal = [];

  List extraCostMoneyList = [];
  List _extraCosteMoney = [];
  List<int> _extraCostMoneyFinal = [];

  List buyMoneyList = [];
  List _buyMoney = [];
  List<int> _buyMoneyFinal = [];

  List payMoneyList = [];
  List _payMoney = [];
  List<int> _payMoneyFinal = [];

  var totalproductsMoney = 0;
  var totalMortgagePayMoney = 0;
  var totalMortgageMoney = 0;
  var totalExtraCostMoney = 0;
  var totalSellMoney = 0;
  var totalBuyMoney = 0;
  var totalPayMoney = 0;

  FirebaseFirestore _fireStoreInstance = FirebaseFirestore.instance;

  fetchProductsMoneyData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("products-money")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        productsMoneyList.add({
          'money': qn.docs[i]["total_money"],
        });
      }
      print("Product money : ${productsMoneyList}");
    });

// convert list to int
    _productsMoney = productsMoneyList.map((item) => item['money']).toList();
    print("intList : ${_productsMoney}");

    // convert list to int
    _productsMoneyFinal =
        _productsMoney.map((e) => int.parse(e.toString())).toList();
    print("add products money final: ${_productsMoneyFinal}");

    // total

    totalproductsMoney =
        _productsMoneyFinal.reduce((value, element) => value + element);
    print('total products money : ${totalproductsMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchMortgagePayData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("mortgage-pay")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        mortgagePayMoneyList.add({
          'money': qn.docs[i]["pay"],
        });
      }
      print("mortgage pay money : ${mortgagePayMoneyList}");
    });

// convert list to int
    _mortgagePayMoney =
        mortgagePayMoneyList.map((item) => item['money']).toList();
    print("intList : ${_mortgagePayMoney}");

    // convert list to int
    _mortgagePayMoneyFinal =
        _mortgagePayMoney.map((e) => int.parse(e.toString())).toList();
    print("add mortgage pay money final: ${_mortgagePayMoneyFinal}");

    // total

    totalMortgagePayMoney =
        _mortgagePayMoneyFinal.reduce((value, element) => value + element);
    print('total mortgage pay money : ${totalMortgagePayMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchSellData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("new-sell")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        sellMoneyList.add({
          'money': qn.docs[i]["pay"],
        });
      }
      print("sell money : ${sellMoneyList}");
    });

// convert list to int
    _sellMoney = sellMoneyList.map((item) => item['money']).toList();
    print("sell money : ${_sellMoney}");

    // convert list to int
    _sellMoneyFinal = _sellMoney.map((e) => int.parse(e.toString())).toList();
    print("add sell money final: ${_sellMoneyFinal}");

    // total

    totalSellMoney =
        _sellMoneyFinal.reduce((value, element) => value + element);
    print('total sell money : ${totalSellMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchMortageData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("new-mortgage")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        mortgageMoneyList.add({
          'money': qn.docs[i]["total_money"],
        });
      }
      print("Mortgage money : ${mortgageMoneyList}");
    });

// convert list to int
    _mortgageMoney = mortgageMoneyList.map((item) => item['money']).toList();
    print("Mortgage money : ${_mortgageMoney}");

    // convert list to int
    _mortgageMoneyFinal =
        _mortgageMoney.map((e) => int.parse(e.toString())).toList();
    print("add mortgage money final: ${_mortgageMoneyFinal}");

    // total

    totalMortgageMoney =
        _mortgageMoneyFinal.reduce((value, element) => value + element);
    print('total mortgage money : ${totalMortgageMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchExtraCostData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("extra-cost")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        extraCostMoneyList.add({
          'money': qn.docs[i]["total-money"],
        });
      }
      print("Extra Cost money : ${extraCostMoneyList}");
    });

// convert list to int
    _extraCosteMoney = extraCostMoneyList.map((item) => item['money']).toList();
    print("extraCoste money : ${_extraCosteMoney}");

    // convert list to int
    _extraCostMoneyFinal =
        _extraCosteMoney.map((e) => int.parse(e.toString())).toList();
    print("add Extra money final: ${_extraCostMoneyFinal}");

    // total

    totalExtraCostMoney =
        _extraCostMoneyFinal.reduce((value, element) => value + element);
    print('total Extra money : ${totalExtraCostMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchBuyData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("new-buy")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        buyMoneyList.add({
          'money': qn.docs[i]["money"],
        });
      }
      print("Buy money : ${buyMoneyList}");
    });

// convert list to int
    _buyMoney = buyMoneyList.map((item) => item['money']).toList();
    print("buy money : ${_buyMoney}");

    // convert list to int
    _buyMoneyFinal = _buyMoney.map((e) => int.parse(e.toString())).toList();
    print("add buy money final: ${_buyMoneyFinal}");

    // total

    totalBuyMoney = _buyMoneyFinal.reduce((value, element) => value + element);
    print('totalbuy money : ${totalBuyMoney}');

    // total
    // Output
    return qn.docs;
  }

  fetchPayData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("pay")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        payMoneyList.add({
          'money': qn.docs[i]["money"],
        });
      }
      print("Pay money : ${payMoneyList}");
    });

// convert list to int
    _payMoney = payMoneyList.map((item) => item['money']).toList();
    print("pay money : ${_payMoney}");

    // convert list to int
    _payMoneyFinal = _payMoney.map((e) => int.parse(e.toString())).toList();
    print("add Pay money final: ${_payMoneyFinal}");

    // total

    totalPayMoney = _payMoneyFinal.reduce((value, element) => value + element);
    print('total pay money : ${totalPayMoney}');

    //get total

    // total
    // Output
    return qn.docs;
  }

  var firstSubTotal = 0;
  var secondSubTotal = 0;
  var finalSubTotal = 0;

  firstSub() {
    setState(() {
      firstSubTotal =
          totalMortgagePayMoney + totalSellMoney + totalproductsMoney;
      secondSubTotal = totalMortgageMoney +
          totalExtraCostMoney +
          totalBuyMoney +
          totalPayMoney;
      finalSubTotal = firstSubTotal - secondSubTotal;
    });
    print("firstSubTotal : ${firstSubTotal}");
    print("secondSubTotal : ${secondSubTotal}");
    print("finalSubTotal : ${finalSubTotal}");
  }

  @override
  void initState() {
    fetchProductsMoneyData();
    fetchMortgagePayData();
    fetchSellData();
    fetchMortageData();
    fetchExtraCostData();
    fetchBuyData();
    fetchPayData();

    Timer(Duration(seconds: 3), () => firstSub());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Stream<QuerySnapshot<Map<String, dynamic>>> _userStream =
        FirebaseFirestore.instance
            .collection('user-information')
            .doc(_auth.currentUser!.email)
            .collection("data")
            .snapshots();

    return SafeArea(
        child: Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: _userStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text("Something went wrong"));
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: AppColor.appColor,
            ));
          }
          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data =
                  document.data()! as Map<String, dynamic>;
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      height: 50.h,
                      width: double.maxFinite,
                      color: const Color(0xff00008B),
                      child: ListTile(
                        leading: Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Image.asset("assets/images/profile.png"),
                        ),
                        title: Text(
                          data['name'],
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        trailing: Lottie.asset("assets/files/gold.json",
                            height: 100.h),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        
                        children: [
                          CustomContainerTwo(
                              balance: "${finalSubTotal.toString()} টাকা",
                              lastUpdate: ""),
                          //banner ad implement
                          SizedBox(height: 20.h),
                          BannerAdContainer(),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const MortgageOptionPageTwo()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "বন্ধক লিস্ট",
                                      assetsName: "assets/images/mortage.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => IncomeDetailsPage(
                                                  totalMoney: finalSubTotal,
                                                  extraCost:
                                                      totalExtraCostMoney,
                                                  mortgage: totalMortgageMoney,
                                                  buyMoney: totalBuyMoney,
                                                  mortgagePay:
                                                      totalMortgagePayMoney,
                                                  payMoney: totalPayMoney,
                                                  productsMoney:
                                                      totalproductsMoney,
                                                  sellMoney: totalSellMoney,
                                                )));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "ইনকাম",
                                      assetsName: "assets/images/income.png"))
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => SellList()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "বিক্রি লিস্ট",
                                      assetsName: "assets/images/sell.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => PayList()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "টাকা দিয়েছেন",
                                      assetsName: "assets/images/pay1.png"))
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Bounceable(
                              //     onTap: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (_) => ProductsDetails()));
                              //     },
                              //     child: const CustomContainer(
                              //         bottomText: "Product",
                              //         assetsName:
                              //             "assets/images/products.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Calculator()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "ক্যাকুলেটর",
                                      assetsName:
                                          "assets/images/calculator.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => BuyListPage()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "কিনার লিস্ট",
                                      assetsName: "assets/images/buy.png"))
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => EmployeeList()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: " কর্মচারী লিস্ট",
                                      assetsName:
                                          "assets/images/Employees.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => WorkListPage()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "কাজ করছে",
                                      assetsName: "assets/images/work.jpg"))
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Divider(),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                MortgageOptionPage()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "নতুন বন্ধক",
                                      assetsName:
                                          "assets/images/new_mortage.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => NewSell()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "নতুন বিক্রি ",
                                      assetsName:
                                          "assets/images/new_sell.png")),
                              // Bounceable(
                              //     onTap: () {
                              //       Navigator.push(
                              //           context,
                              //           MaterialPageRoute(
                              //               builder: (_) => Calculator()));
                              //     },
                              //     child: const CustomContainer(
                              //         bottomText: "Calculator",
                              //         assetsName:
                              //             "assets/images/calculator.png"))
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => AddNewEmployee()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "নতুন কর্মচারী",
                                      assetsName:
                                          "assets/images/NewEmployee.png")),
                              Bounceable(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Others()));
                                  },
                                  child: const CustomContainer(
                                      bottomText: "অন্যান",
                                      assetsName:
                                          "assets/images/shopping.png")),
                            ],
                          ),

                          SizedBox(
                            height: 15.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    ));
  }

  showDialogBox() => showCupertinoDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
          title: const Text(
            'No Internet Connection',
            style: TextStyle(color: Colors.red),
          ),
          content: const Text('Please check your internet connectivity'),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.pop(context, 'Cancel');
                setState(() => isAlertSet = false);
                isDeviceConnected =
                    await InternetConnectionChecker().hasConnection;
                if (!isDeviceConnected && isAlertSet == false) {
                  showDialogBox();
                  setState(() => isAlertSet = true);
                }
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
