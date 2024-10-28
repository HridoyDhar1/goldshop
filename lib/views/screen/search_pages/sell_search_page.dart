import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gold_manager_update/views/const/Theme/app_color.dart';
import 'package:gold_manager_update/views/screen/search_pages/sell_search_details_page.dart';

class SellSearchPage extends StatefulWidget {
  const SellSearchPage({super.key});

  @override
  State<SellSearchPage> createState() => _SellSearchPageState();
}

class _SellSearchPageState extends State<SellSearchPage> {
  var inputText = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.textFieldBgColor,
        body: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              SizedBox(
                height: 05.h,
              ),
              CupertinoSearchTextField(
                onChanged: (val) {
                  setState(() {
                    inputText = val;
                  });
                },
              ),
              Expanded(
                  child: Container(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection("new-sell")
                        .doc(FirebaseAuth.instance.currentUser!.email)
                        .collection("data")
                        .where("name", isEqualTo: inputText )
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
                                      builder: (_) => SellSearchDetailsPage(
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
                                          totalMoney: data["tk"],
                                          pay: data["pay"],
                                          discount: data["discount"],
                                          img: data["image"],
                                          caret: data["caret"],
                                        mujuri: data['mujuri'],
                                        perVori: data['tk'],
                                        productsprice: data['products-price'],
                                        totalprice: data['total-price'],
                                          )));
                            },
                            child: Card(
                              child: ListTile(
                                title: Text(data["name"]),
                                trailing: Text(data["tk"]),
                              ),
                            ),
                          );
                        },
                      ).toList());
                    }),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
