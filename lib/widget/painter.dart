import 'package:flutter/material.dart';

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint=Paint()
    ..color= Colors.red;
    canvas.drawLine(Offset(100,100), Offset(200, 200), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}