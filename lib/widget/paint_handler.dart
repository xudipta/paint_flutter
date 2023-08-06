import 'package:flutter/material.dart';
import 'package:paint_flutter/model/draw_type.dart';
import 'package:paint_flutter/model/path_container.dart';
import 'package:paint_flutter/widget/painter.dart';
import '../model/drawing_container.dart';


class PaintHandler extends StatefulWidget {
   const PaintHandler({
    super.key,
    required this.drawings, required this.type, required this.drawingColor,

  });
   final List<DrawingContainer> drawings;
   final DrawType type;
   final Color drawingColor;

  @override
  State<PaintHandler> createState() => _PaintHandlerState();
}

class _PaintHandlerState extends State<PaintHandler> {
  late Path path=Path();
  late PathContainer pathContainer;

  @override
  void initState() {
    path=Path();
  }

  _onScaleStart(ScaleStartDetails details){
    pathContainer.initPath(details.localFocalPoint);
    setState(() {

    });
  }
  _onScaleUpdate(ScaleUpdateDetails details){
    pathContainer.updatePath(details.localFocalPoint);
    path.addPath(pathContainer.getPath(), Offset.zero);
    setState(() {

    });
  }
  _onScaleEnd(ScaleEndDetails details){

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onScaleStart: _onScaleStart,
      onScaleUpdate: _onScaleUpdate,
      onScaleEnd: _onScaleEnd,
      child: CustomPaint(
        //painter class
        painter: MyPainter(
          path,
          widget.drawingColor,
        ),
      ),
    );
  }
}
