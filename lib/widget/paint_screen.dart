import 'package:flutter/material.dart';
import 'package:paint_flutter/model/drawing_container.dart';
import 'package:paint_flutter/widget/paint_handler.dart';
import '../model/draw_type.dart';

class PaintScreen extends StatefulWidget {
  const PaintScreen({super.key});

  @override
  State<PaintScreen> createState() => _PaintScreenState();
}
//Main Screen where painting and toolbar will be present
class _PaintScreenState extends State<PaintScreen> {
  DrawType type=DrawType.none;
  Color color=Colors.black;
  List<DrawingContainer> drawingContainer=[];

  @override
  void initState() {
    super.initState();
    type=DrawType.none;
    color=Colors.black;

  }
  //===========

  _changeTool(DrawType dType){
    print('change tool is called $type');
    type = dType;
    setState(() {

    });
  }
  //===========
  _changeColor(Color dColor){
    color=dColor;
    print('change tool is called, color is $color');
    setState(() {

    });
  }
  Color getDrawingToolColor(DrawType dType){
    return type==dType?Colors.black:Colors.black12;
  }
  Icon getIcon(Color clr){
    if(color!=clr) {
      return Icon(Icons.circle_outlined,color: clr);
    }else {
      return Icon(Icons.circle,color: clr);
    }
  }
  //===========

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () => _changeTool(DrawType.pen),
            icon: Icon(Icons.draw, color: getDrawingToolColor(DrawType.pen)),
          ),
          IconButton(
            onPressed: () => _changeTool(DrawType.eraser),
            icon: Icon(Icons.phonelink_erase, color: getDrawingToolColor(DrawType.eraser)),
          ),
          IconButton(
            onPressed: () => _changeTool(DrawType.delete),
            icon: Icon(Icons.delete, color: getDrawingToolColor(DrawType.delete)),
          ),
          IconButton(
            onPressed: () => _changeTool(DrawType.undo),
            icon: Icon(Icons.undo, color: getDrawingToolColor(DrawType.undo)),
          ),
          IconButton(
            onPressed: () => _changeColor(Colors.black),
            icon: getIcon(Colors.black),
          ),
          IconButton(
            onPressed: () => _changeColor(Colors.red),
            icon: getIcon(Colors.red),
          ),
          IconButton(
            onPressed: () => _changeColor(Colors.blue),
            icon: getIcon(Colors.blue),
          ),
          IconButton(
            onPressed: () => _changeColor(Colors.yellow),
            icon: getIcon(Colors.yellow),
          ),
        ],
      ),
      body: PaintHandler(
        drawings: drawingContainer,
        type: type,
        drawingColor: color,
      ),
    );
  }
}
