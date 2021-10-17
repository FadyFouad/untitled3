import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:45.****
///****************************************************

class LogInController extends GetxController{

  WrapperController wrapperController =WrapperController();
  final GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  void onInit() {

  }

  @override
  void onReady() {

  }

  @override
  void onClose() {

  }

  Future<void> loginWithGoogle() async {
    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      // Getting users credential
      UserCredential result = await wrapperController.auth.signInWithCredential(authCredential);
      User? user = result.user;
      if (result != null) {
        print('user => $user');
      } // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }

}