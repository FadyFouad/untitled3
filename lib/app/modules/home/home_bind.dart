import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/modules/home/home_controller.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:57.***
///****************************************************

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put<HomePageController>(HomePageController());
  }
}