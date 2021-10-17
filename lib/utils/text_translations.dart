import 'package:get/get.dart';

///****************************************************
///*** Created by Fady Fouad on 19-Sep-21 at 19:15.***
///****************************************************

class TextMultiLang extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello!',
          'name': 'Name',
          'email': 'E-mail',
          'emailVerified': 'Email Verified',
          'photoURL': 'Photo URL',
          'creationTime': 'Creation Time',
        },
        'ar': {
          'hello': 'مرحبا',
          'name': 'الاسم',
          'email': 'E-mail',
          'emailVerified': 'Email Verified',
          'photoURL': 'Photo URL',
          'creationTime': 'Creation Time',
        },
      };
}
