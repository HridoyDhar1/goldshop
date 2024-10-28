import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:gold_manager_update/views/screen/home_page/home.dart';

class AuthHelper {
  final box = GetStorage();
  Future signUp(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.uid.isNotEmpty) {
        box.write('id', authCredential.uid);
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
        Fluttertoast.showToast(
            msg: "Sign Up successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "The account already exists for that email",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }

  Future login(email, password, context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      var authCredential = userCredential.user;
      print(authCredential);
      if (authCredential!.email!.isNotEmpty) {
        box.write('id', authCredential.uid);
        Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
        Fluttertoast.showToast(
            msg: "Login successful",
            backgroundColor: Colors.green,
            textColor: Colors.white);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Fluttertoast.showToast(
            msg: "No user found for that email",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white);
      } else if (e.code == 'wrong-password') {
        Fluttertoast.showToast(
            msg: "Incorrect Password",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white);
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: "The account already exists for that email",
            backgroundColor: Colors.redAccent,
            textColor: Colors.white);
      }
    } catch (e) {
      print(e);
    }
  }
}
