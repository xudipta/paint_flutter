import 'package:flutter/material.dart';

class MyPainter extends CustomPainter{
   Path path;
   Color color;
  MyPainter(this.path, this.color);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint=Paint()
    ..color= color;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}