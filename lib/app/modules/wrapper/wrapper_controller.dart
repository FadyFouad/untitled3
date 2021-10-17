import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled3/routes/routes.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:49.****
///****************************************************

class WrapperController extends GetxController {
  // creating firebase instance
  final FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  var isSignedIn = false.obs;

  @override
  void onInit() {
    print('WrapperController onInit');
    super.onInit();
  }

  @override
  void onReady() {
    print('WrapperController onReady');
    ever(isSignedIn, handleAuthChange);
    isSignedIn.value = auth.currentUser != null;
    auth.authStateChanges().listen((event) {
      isSignedIn.value = event != null;
    });
    super.onReady();
  }

  @override
  void onClose() {
    print('WrapperController onClose');
    super.onClose();
  }

  void handleAuthChange(bool isSignedIn) {
    Timer(
      Duration(seconds: 0),
      () {
        print('handleAuthChange');
        if (isSignedIn) {
          print('isSignedIn --> $isSignedIn');
          Get.offAllNamed(Routes.HOME_PAGE, arguments: auth.currentUser);
        } else {
          print('isSignedIn --> $isSignedIn');
          Get.offAllNamed(Routes.LOGIN);
        }
      },
    );
  }
}
