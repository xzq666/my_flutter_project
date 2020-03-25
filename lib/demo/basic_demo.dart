import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      color: Colors.grey[100],
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://resources.ninghao.org/images/candy-shop.jpg"),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hardLight,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
//            color: Color.fromRGBO(3, 54, 255, 1.0),  // 背景色一般放在decoration中设置
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              border: Border.all(
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
//              borderRadius: BorderRadius.circular(10.0),  // 在盒子四周添加圆角
//              borderRadius: BorderRadius.only(
//                topLeft: Radius.circular(10.0),
//                topRight: Radius.circular(10.0),
//                bottomLeft: Radius.circular(10.0),
//              ) // 单独添加圆角效果
              boxShadow: [
                BoxShadow(
                  offset: Offset(0.0, 16.0),  // 偏移量
                  color: Color.fromRGBO(16, 20, 188, 1.0),  // 阴影颜色
                  blurRadius: 25.0,  // 模糊程度
                  spreadRadius: -9.0,  // 扩散程度
                )
              ],
              shape: BoxShape.circle,
              // 镜像渐变
//              gradient: RadialGradient(colors: [
//                Color.fromRGBO(7, 102, 255, 1.0),
//                Color.fromRGBO(3, 28, 128, 1.0),
//              ])
              // 线性渐变
              gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(7, 102, 255, 1.0),
                    Color.fromRGBO(3, 28, 128, 1.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
              )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RichText(
      text: TextSpan(
          text: "1192227411",
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 20.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100
          ),
          children: [
            TextSpan(
                text: "@qq.com",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                )
            )
          ]
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  final _textStyle = TextStyle(
      fontSize: 16.0
  );

  final String _title = "将进酒-静夜思";
  final String _author = "李白";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      "《$_title》- $_author。君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。床前明月光，疑是地上霜。举头望明月，低头思故乡。",
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,  // 设置最大显示行数
      overflow: TextOverflow.ellipsis,  // 最后用省略号省略
    );
  }
}
