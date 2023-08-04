import 'package:flutter/material.dart';
import 'package:paint_flutter/widget/painter.dart';


class PaintHandler extends StatefulWidget {
  const PaintHandler({super.key});

  @override
  State<PaintHandler> createState() => _PaintHandlerState();
}

class _PaintHandlerState extends State<PaintHandler> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CustomPaint(
        //painter class
        painter: MyPainter(),
      ),
    );
  }
}
