import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:48.***
///****************************************************

class HomePageController extends GetxController{
  WrapperController wrapperController = WrapperController();
  late User user;
  @override
  void onInit() {
    user = Get.arguments;
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }

  void logout()  {
     wrapperController.googleSignIn.disconnect();
     wrapperController.auth.signOut();
  }

}