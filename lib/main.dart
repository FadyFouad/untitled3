import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:untitled3/app/modules/wrapper/wrapper_binding.dart';
import 'package:untitled3/routes/pages.dart';
import 'package:untitled3/utils/text_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initializing the firebase app
  await Firebase.initializeApp();
  WrapperBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Demo',
      initialRoute: Pages.INITIAL,
      getPages: Pages.appPages,
      locale: Locale('en','US'),
      fallbackLocale: Locale('ar'),
      translations: TextMultiLang(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
