// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:personalinfo/App/services/auth.dart';
// class signupcontroller extends GetxController{
  

//   final emailcontroler = TextEditingController();
//   final passcontroler = TextEditingController();
//   final namecontroler = TextEditingController();
//   final contactcontroler = TextEditingController();
//   final agecontroler = TextEditingController();
//    var isObsecure = true.obs;
//   var isLoad = false.obs;
//   togglePass() {
//     isObsecure.value = !isObsecure.value;
//   }

//   @override
//   void onClose() {}
//   Authservice.registration();

//   // var email;
//   // var pass;
//   // String? contact;
//   // String? name;
//   // String? age;

//   // @override
//   // void dispose() {
//   //   emailcontroler.dispose();
//   //   passcontroler.dispose();
//   //   super.dispose();
//   // }

// }

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personalinfo/App/services/auth.dart';

 class SignupController extends GetxController {
  // final formkey1 = GlobalKey<FormState>();
  final TextEditingController emailcontroler = TextEditingController();
  final TextEditingController passcontroler= TextEditingController();
  final TextEditingController namecontroler= TextEditingController();
   final TextEditingController agecontroler= TextEditingController();
  final TextEditingController contactcontroller = TextEditingController();
  var isObsecure = true.obs;
  var isLoad = false.obs;
  togglePass() {
    isObsecure.value = !isObsecure.value;
  }

  @override
  void onClose() {}

  void signup() {
    print("im here");
    var userInfi = {
      'name': namecontroler.text,
      'email': emailcontroler.text,
      'password': passcontroler.text,
      'phone': contactcontroller.text,
      'age': agecontroler.text,

      // 'photoUrl': '$imageUrl' == null
      //     ? 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA65C8-sNxxoiwjic3K8ZOs-2oG6PC-wu1dw&usqp=CAU'
      //     : '$imageUrl',
      //'searchIndex': indexList,
      //'status': 'offline'
    };
print("ttttttt");
    Authservice.registration(
        emailcontroler.text, passcontroler.text);
    emailcontroler.clear();
    namecontroler.clear();
    passcontroler.clear();
    // confirmPassController.clear();
    contactcontroller.clear();
  }
}
