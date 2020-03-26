import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
//    return Row(
//      children: <Widget>[
//        IconBadge(Icons.pool),
//        IconBadge(Icons.beach_access),
//        IconBadge(Icons.airplanemode_active)
//      ],
//    ); // 横排列
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 主轴
//      crossAxisAlignment: CrossAxisAlignment.center,  // 交叉轴（与主轴垂直）
//      children: <Widget>[
//        IconBadge(Icons.pool),
//        IconBadge(Icons.beach_access, size: 50,),
//        IconBadge(Icons.airplanemode_active)
//      ],
//    );  // 竖排列

  // SizeBox
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,  // 主轴
//      crossAxisAlignment: CrossAxisAlignment.center,  // 交叉轴（与主轴垂直）
//      children: <Widget>[
//        SizedBox(
//          child: Container(
//            alignment: Alignment.topCenter,
//            child: Icon(Icons.ac_unit, color: Colors.white,),
//            width: 100.0,
//            height: 100.0,
//            decoration: BoxDecoration(
//              color: Color.fromRGBO(3, 54, 255, 1.0),
//              borderRadius: BorderRadius.circular(8.0),
//            ),
//          ),
//        ),
//        SizedBox(
//          height: 32,
//        ),
//        SizedBox(
//          child: Container(
//            child: Icon(Icons.ac_unit, color: Colors.white,),
//            width: 50.0,
//            height: 50.0,
//            decoration: BoxDecoration(
//              color: Color.fromRGBO(3, 54, 255, 1.0),
//              borderRadius: BorderRadius.circular(8.0),
//            ),
//          ),
//        )
//      ],
//    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,  // 主轴
      crossAxisAlignment: CrossAxisAlignment.center,  // 交叉轴（与主轴垂直）
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16.0/9.0,
          child: Stack(
            children: <Widget>[
              SizedBox(
                child: Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              SizedBox(
                child: Container(
                  child: Icon(Icons.brightness_2, color: Colors.white,),
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(3, 54, 255, 1.0),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Icon(Icons.ac_unit, color: Colors.white, size: 15.0,)
              )
            ],
          ),
        )
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {
    this.size = 32.0
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Icon(icon, size: size, color: Colors.white, ),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}
