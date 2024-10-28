//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/get_navigation.dart';
// import 'package:gold_manager_update/views/screen/home_page/home.dart';
//
// import '../views/const/widget/custom_button.dart';
// final TextEditingController _oTPController = TextEditingController();
// class AuthHelper {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   phoneAuth(number,password,context) async {
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: number,
//       verificationCompleted: (PhoneAuthCredential credential) async{
//         UserCredential userCredential = await auth.signInWithCredential(credential);
//         User? user = userCredential.user;
//         if(user!.uid.isNotEmpty){
//           Get.to(const HomePage());
//         }
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         if (e.code == 'invalid-phone-number') {
//           print('The provided phone number is not valid.');
//         }
//       },
//       codeSent: (String verificationId, int? resendToken) {
//         showDialog(
//             context: context,
//             builder: (_) {
//               return AlertDialog(
//                 title: const Text("Enter your Verification code"),
//                 content: Column(
//                   children: [
//                     TextField(
//                       controller: _oTPController,
//                     ),
//                     CustomButton(
//                       text: 'Next',
//                       onAction: () async {
//                         PhoneAuthCredential phoneAuthCredential =
//                         PhoneAuthProvider.credential(
//                             verificationId: verificationId,
//                             smsCode: _oTPController.text);
//                         UserCredential userCredential = await auth.signInWithCredential(phoneAuthCredential);
//                         User? user = userCredential.user;
//                         if(user!.uid.isNotEmpty){
//                           Get.to(HomePage());
//                           Get.close(1);
//                         } else {
//                           print("failed");
//                         }
//                       },
//                     )
//                   ],
//                 ),
//               );
//             });
//       },
//       timeout: const Duration(seconds: 60),
//       codeAutoRetrievalTimeout: (String verificationId) {
//
//       },
//     );
//   }
// }
