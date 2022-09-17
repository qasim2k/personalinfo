import 'package:firebase_auth/firebase_auth.dart';
import 'package:personalinfo/App/screens/signup/signupcontrollr.dart';
import 'package:get/get.dart';
class Authservice{
  
  static registration(String email,String pass) async {
    if (email != null) {
      try {
      Get.find<SignupController>().isLoad.value = true;
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: pass);
        //  print('not Passed');

      } catch (ex) {
        //  print('3');
        print(ex);
      }
    }
  }

}