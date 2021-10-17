import 'package:flutter/material.dart';

///****************************************************
///*** Created by Fady Fouad on 19-Sep-21 at 15:47.****
///****************************************************

class WaveBG extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var w = size.width;
    var h = size.height;
    print('Width ==> $w , height ==> $h');
    path.moveTo(w / 2, 0);

    path.lineTo(w, 0);
    path.lineTo(w, w/2);
    path.lineTo(w / 2, w/2);
    path.lineTo(w / 2, 0);
    // path.quadraticBezierTo(w / 4, w/4, w / 2, w/3);
    path.cubicTo(w, w/2, w, w/2, w, w/2);
    // path.quadraticBezierTo(3  * w , w/2, w, w/2);
    // path.moveTo(w / 2, 0);
    // path.lineTo(0, h/2);
    // path.cubicTo(w/2, w, w/2, w, w, w/2);
    // path.quadraticBezierTo(3 / 4 * w, 190, w, 130);
    // path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // throw UnimplementedError();
    return false;
  }
}
