import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 20-Sep-21 at 13:12.***
///****************************************************


class SignInBTN extends StatelessWidget {
  final title;
  final image;
  final color;
  final onPress;
  const SignInBTN({
    Key? key, this.title, this.image, this.color, this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPress,
        child: Ink(
          width: double.infinity,
          color: Color(color),
          child: Padding(
            padding: EdgeInsets.all(6),
            child: Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Image.asset('$image',width: 30,height: 30,),
                  SizedBox(width: 12),
                  Text('$title',style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
