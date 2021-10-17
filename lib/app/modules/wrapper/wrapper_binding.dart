import 'package:get/get.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:49.***
///****************************************************

class WrapperBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WrapperController>(WrapperController());
  }
}
