import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gold_manager_update/helper/banner_ad_container.dart';
import 'package:gold_manager_update/helper/interestitial_ad_helper.dart';
import 'package:gold_manager_update/views/const/Theme/all_text_style.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/search_pages/mortgage_search_details_page.dart';
import 'package:gold_manager_update/views/screen/search_pages/mortgage_search_page.dart';

class NewMortgageList extends StatefulWidget {
  NewMortgageList({Key? key}) : super(key: key);

  @override
  State<NewMortgageList> createState() => _NewMortgageListState();
}

class _NewMortgageListState extends State<NewMortgageList> {
  final List newMortgageList = [];

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _fireStoreInstance = FirebaseFirestore.instance;

  fetchNewMortgageData() async {
    QuerySnapshot qn = await _fireStoreInstance
        .collection("new-mortgage")
        .doc(_auth.currentUser!.email)
        .collection("data")
        .get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        newMortgageList.add({
          'client-name': qn.docs[i]["name"],
          'shop-name': qn.docs[i]["shop-name"],
          'client-address': qn.docs[i]["address"],
          'client-phone': qn.docs[i]["phone"],
          'date': qn.docs[i]["date"],
          'parcent': qn.docs[i]["parcent"],
          'first-gold-type-name': qn.docs[i]["gold_type_first_name"],
          'second-gold-type-name': qn.docs[i]["gold_type_second_name"],
          'third-gold-type-name': qn.docs[i]["gold_type_third_name"],
          'four-gold-type-name': qn.docs[i]["gold_type_four_name"],
          'five-gold-type-name': qn.docs[i]["gold_type_five_name"],
          'six-gold-type-name': qn.docs[i]["gold_type_six_name"],
          'seven-gold-type-name': qn.docs[i]["gold_type_seven_name"],
          'eight-gold-type-name': qn.docs[i]["gold_type_eight_name"],
          'nine-gold-type-name': qn.docs[i]["gold_type_nine_name"],
          'ten-gold-type-name': qn.docs[i]["gold_type_ten_name"],
          'first_vori': qn.docs[i]["first_vori"],
          'second_vori': qn.docs[i]["second_vori"],
          'third_vori': qn.docs[i]["third_vori"],
          'four_vori': qn.docs[i]["four_vori"],
          'five_vori': qn.docs[i]["five_vori"],
          'six_vori': qn.docs[i]["six_vori"],
          'seven_vori': qn.docs[i]["seven_vori"],
          'eight_vori': qn.docs[i]["eight_vori"],
          'nine_vori': qn.docs[i]["nine_vori"],
          'ten_vori': qn.docs[i]["ten_vori"],
          'first_ana': qn.docs[i]["first_ana"],
          'second_ana': qn.docs[i]["second_ana"],
          'third_ana': qn.docs[i]["third_ana"],
          'four_ana': qn.docs[i]["four_ana"],
          'five_ana': qn.docs[i]["five_ana"],
          'six_ana': qn.docs[i]["six_ana"],
          'seven_ana': qn.docs[i]["seven_ana"],
          'eight_ana': qn.docs[i]["eight_ana"],
          'nine_ana': qn.docs[i]["nine_ana"],
          'ten_ana': qn.docs[i]["ten_ana"],
          'first_rothi': qn.docs[i]["first_rothi"],
          'second_rothi': qn.docs[i]["second_rothi"],
          'third_rothi': qn.docs[i]["third_rothi"],
          'four_rothi': qn.docs[i]["four_rothi"],
          'five_rothi': qn.docs[i]["five_rothi"],
          'six_rothi': qn.docs[i]["six_rothi"],
          'seven_rothi': qn.docs[i]["seven_rothi"],
          'eight_rothi': qn.docs[i]["eight_rothi"],
          'nine_rothi': qn.docs[i]["nine_rothi"],
          'ten_rothi': qn.docs[i]["ten_rothi"],
          'first_point': qn.docs[i]["first_point"],
          'second_point': qn.docs[i]["second_point"],
          'third_point': qn.docs[i]["third_point"],
          'four_point': qn.docs[i]["four_point"],
          'five_point': qn.docs[i]["five_point"],
          'six_point': qn.docs[i]["six_point"],
          'seven_point': qn.docs[i]["seven_point"],
          'eight_point': qn.docs[i]["eight_point"],
          'nine_point': qn.docs[i]["nine_point"],
          'ten_point': qn.docs[i]["ten_point"],
          'total-weight': qn.docs[i]["total_weight"],
          'total-money': qn.docs[i]["total_money"],
        });
      }
    });
    return qn.docs;
  }

  @override
  void initState() {
    fetchNewMortgageData();
    InterestitialAdHelper().myInterestitialAd();
  
    super.initState();
  }

  Future<void> deleteItem(
    selectedOrder,
  ) {
    return FirebaseFirestore.instance
        .collection('new-mortgage')
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection('data')
        .doc(selectedOrder)
        .delete()
        .then((value) => Fluttertoast.showToast(
            msg: "Deleted",
            backgroundColor: Colors.red,
            textColor: Colors.white));
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
          "Mortgage List : ${newMortgageList.length.toString()}",
          style: AllTextStyle().employeeName,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          children: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MortgageSearchPage()));
                },
                child: Image.asset("assets/buttonImage/search.png")),
            SizedBox(
              height: 15.h,
            ),
            Expanded(
                child: Container(
              child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("new-mortgage")
                      .doc(FirebaseAuth.instance.currentUser!.email)
                      .collection("data")
                      .snapshots(),
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text("Something went wrong"),
                      );
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return ListView(
                        children: snapshot.data!.docs.map(
                      (DocumentSnapshot document) {
                        Map<String, dynamic> data =
                            document.data() as Map<String, dynamic>;
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        NewMortgageSearchPageDetails(
                                          name: data["name"],
                                          address: data["address"],
                                          date: data["date"],
                                          phone: data["phone"],
                                          firstGoldName:
                                              data["gold_type_first_name"],
                                          secondGoldName:
                                              data["gold_type_second_name"],
                                          thirdGoldName:
                                              data["gold_type_third_name"],
                                          fourGoldName:
                                              data["gold_type_four_name"],
                                          fiveGoldName:
                                              data["gold_type_five_name"],
                                          sixGoldName:
                                              data["gold_type_six_name"],
                                          sevenGoldName:
                                              data["gold_type_seven_name"],
                                          eightGoldName:
                                              data["gold_type_eight_name"],
                                          nineGoldName:
                                              data["gold_type_nine_name"],
                                          tenGoldName:
                                              data["gold_type_ten_name"],
                                          firstAna: data["first_ana"],
                                          secondAna: data["second_ana"],
                                          thirdAna: data["third_ana"],
                                          fourAna: data["four_ana"],
                                          fiveAna: data["five_ana"],
                                          sixAna: data["six_ana"],
                                          sevenAna: data["seven_ana"],
                                          eightAna: data["eight_ana"],
                                          nineAna: data["nine_ana"],
                                          tenAna: data["ten_ana"],
                                          firstVori: data["first_vori"],
                                          secondVori: data["second_vori"],
                                          thirdVori: data["third_vori"],
                                          fourVori: data["four_vori"],
                                          fiveVori: data["five_vori"],
                                          sixVori: data["six_vori"],
                                          sevenVori: data["seven_vori"],
                                          eightVori: data["eight_vori"],
                                          nineVori: data["nine_vori"],
                                          tenVori: data["ten_vori"],
                                          firstRothi: data["first_rothi"],
                                          secondRothi: data["second_rothi"],
                                          thirdRothi: data["third_rothi"],
                                          fourRothi: data["four_rothi"],
                                          fiveRothi: data["five_rothi"],
                                          sixRothi: data["six_rothi"],
                                          sevenRothi: data["seven_rothi"],
                                          eightRothi: data["eight_rothi"],
                                          nineRothi: data["nine_rothi"],
                                          tenRothi: data["ten_rothi"],
                                          firstPoint: data["first_point"],
                                          secondPoint: data["second_point"],
                                          thirdPoint: data["third_point"],
                                          fourPoint: data["four_point"],
                                          fivePoint: data["five_point"],
                                          sixPoint: data["six_point"],
                                          sevenPoint: data["seven_point"],
                                          eightPoint: data["eight_point"],
                                          ninePoint: data["nine_point"],
                                          tenPoint: data["ten_point"],
                                          totalMoney: data["total_money"],
                                          totalWeight: data["total_weight"],
                                          parcent: data["parcent"], 
                                        )));
                          },
                          // child: Card(
                          //   child: ListTile(
                          //     title: Text(data["name"]),
                          //     trailing: Text(data["tk"]),

                          // ),

                          // ),
                          child: Padding(
                            padding: EdgeInsets.all(05.w),
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(05.w),
                                child: Row(
                                  children: [
                                    Text(" ${data["name"]}"),
                                    Spacer(),
                                    // Text("${data["pay"]} Tk"),
                                    // SizedBox(
                                    //   width: 10.w,
                                    // ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (context) {
                                              return AlertDialog(
                                                title: Text("Delete this item?",
                                                    style: TextStyle(
                                                        color: Colors.red)),
                                                // content: Text("Order Added Successful"),
                                                actions: [
                                                  ElevatedButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text("No")),
                                                  SizedBox(width: 20.w),
                                                  ElevatedButton(
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                              backgroundColor:
                                                                  Colors.red),
                                                      onPressed: () {
                                                        deleteItem(document.id);
                                                        Navigator.pop(context);
                                                      },
                                                      child: Text("Yes"))
                                                ],
                                              );
                                            });
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList());
                  }),
            )),
            BannerAdContainer()
          ],
        ),
      ),
    );
  }
}
