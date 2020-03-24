import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
//              DrawerHeader(
//                  child: Text("header".toUpperCase()),
//                  decoration: BoxDecoration(
//                    color: Colors.grey[100]
//                  ),
//              ),
          UserAccountsDrawerHeader(
            accountName: Text("xuzq", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
            accountEmail: Text("xuzq@qq.com",),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585050714280&di=d8f396713ef89e584d31ee13245be20e&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2F4598eabe4e3fb0303dd41a2f09020f5d5c5b2e3b101aea-aH1XeJ_fw658"),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage("https://resources.ninghao.org/images/candy-shop.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.6),  // 颜色
                        BlendMode.hardLight  // 混合模式
                    )
                )
            ),
          ),
          ListTile(
            title: Text("Messages", textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, size: 22.0, color: Colors.black26,),  // icon在右边，放左边用leading
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text("Favorites", textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black26,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text("Settings", textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, size: 22.0, color: Colors.black26,),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
