import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:50.****
///****************************************************

class WrapperView extends GetView<WrapperController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.blueAccent,
      ),
    );
  }
}
