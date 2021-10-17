import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/modules/log_in/log_in_controller.dart';
import 'package:untitled3/app/widgets/CustomTextFormField.dart';
import 'package:untitled3/app/widgets/sign_btn.dart';
import 'package:untitled3/routes/routes.dart';
import 'package:untitled3/utils/constants.dart';
import 'package:untitled3/utils/wave_background.dart';

///****************************************************
///*** Created by Fady Fouad on 27-Sep-21 at 00:45.****
///****************************************************

class LoginView extends GetView<LogInController> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveBG(),
            child: Container(
              color: Constants.PRIMARY_COLOR,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120.0,
                  ),
                  Center(
                    child: Text(
                      '${Constants.APP_NAME}',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  AuthTextField(
                    controller: _emailController,
                    hint: 'example@domain.com',
                    icon: Icon(
                      Icons.email,
                      color: Constants.PRIMARY_COLOR,
                    ),
                    label: 'Email',
                    isSecured: false,
                  ),
                  AuthTextField(
                    controller: _passwordController,
                    hint: '********',
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: Constants.PRIMARY_COLOR,
                    ),
                    label: 'Password',
                    isSecured: true,
                  ),
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF397AF3),
                        ),
                        onPressed: () {
                          controller.loginWithGoogle();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Login'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: Text('forgot password?'),
                  ),
                  DividerWithText(title: 'OR'),
                  Material(
                    clipBehavior: Clip.hardEdge,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search The Store',
                          // border: OutlineInputBorder(),
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SignInBTN(
                    title: 'Sign In With Facebook',
                    image: 'assets/images/facebook.png',
                    color: 0xFF397AF3,
                  ),
                  SignInBTN(
                    onPress: () {
                      controller.loginWithGoogle();
                    },
                    title: 'Sign In With Google',
                    image: 'assets/images/google.png',
                    color: 0xFF397AF3,
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: Center(
                      child: Text(
                        'Create New Account',
                        style:
                            TextStyle(fontSize: 18, color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DividerWithText extends StatelessWidget {
  final title;

  const DividerWithText({
    Key? key,
    this.title = 'OR',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title),
        ),
        Expanded(child: Divider()),
      ],
    );
  }
}
