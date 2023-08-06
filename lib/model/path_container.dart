import 'dart:ui';

class PathContainer{
  Offset start;
  Offset prev;
  Offset current;

  PathContainer(this.start,this.prev,this.current);
  void initPath(Offset off){
    start=off;
    prev=off;
    current=off;
  }
  void updatePath(Offset off){
    prev = current;
    current = off;
  }
  Path getPath(){
    Path tPath=Path();
    tPath.moveTo(prev.dx, prev.dy);
    var m= Offset((current.dx+prev.dx)/2,(current.dy+prev.dy)/2,);
    tPath.quadraticBezierTo(m.dx, m.dy, current.dx, current.dy);
    return tPath;
  }

}