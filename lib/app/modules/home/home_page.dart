import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:04.***
///****************************************************

class MyHomePage extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyHomePage'),
        actions: [
          IconButton(
            onPressed: () {
              controller.logout();
              print('logout');
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'name'.tr +'=> ${controller.user.displayName}',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'email'.tr + '=> ${controller.user.email}',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'emailVerified'.tr + ' => ${controller.user.emailVerified}',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'photoURL'.tr + ' => ${controller.user.photoURL}',
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                'creationTime'.tr + ' => ${controller.user.metadata.creationTime}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
