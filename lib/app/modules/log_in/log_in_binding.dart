import 'package:get/get.dart';
import 'package:untitled3/app/modules/log_in/log_in_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:46.***
///****************************************************

class LogInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LogInController>(LogInController());
  }
}
