import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/modules/home/home_bind.dart';
import 'package:untitled3/app/modules/home/home_page.dart';
import 'package:untitled3/app/modules/log_in/log_in_binding.dart';
import 'package:untitled3/app/modules/log_in/log_in_view.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_binding.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_view.dart';
import 'package:untitled3/routes/routes.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 11:13.***
///****************************************************

class Pages {
  static const INITIAL = Routes.WRAPPER;
  static final appPages = [
    GetPage(
      name: Routes.WRAPPER,
      page: () => WrapperView(),
      binding: WrapperBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LogInBinding(),
    ),
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => MyHomePage(),
      binding: HomeBinding(),
    ),
  ];
}

