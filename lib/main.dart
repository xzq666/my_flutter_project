import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
      home: Home(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white30  // 水波纹效果
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
//          leading: IconButton(
//              icon: Icon(Icons.menu),
//              tooltip: "Navigation",
//              onPressed: () => debugPrint("Navigation is pressed")
//          ),  // 自定义会覆盖有抽屉时的点击事件，这里因为要看抽屉视图所以不设置
          title: Text("首页"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                tooltip: "Search",
                onPressed: () => debugPrint("Search is pressed")
            )
          ],
          elevation: 10.0,   // 阴影
          bottom: TabBar(
              unselectedLabelColor: Colors.white30,
//              indicatorColor: Colors.black54,
//              indicatorSize: TabBarIndicatorSize.label,
//              indicatorWeight: 2.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.directions_bus)),
                Tab(icon: Icon(Icons.directions_boat)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_railway)),
              ],
          ),
        ),
        body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              ViewDemo(),
              SliverDemo(),
            ],
        ),
        // endDrawer右边抽屉
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

//class Home extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      backgroundColor: Colors.grey[100],
//      appBar: AppBar(
//        leading: IconButton(
//            icon: Icon(Icons.menu),
//            tooltip: "Navigation",
//            onPressed: () => debugPrint("Navigation is pressed")
//        ),
//        title: Text("首页"),
//        actions: <Widget>[
//          IconButton(
//              icon: Icon(Icons.search),
//              tooltip: "Search",
//              onPressed: () => debugPrint("Search is pressed")
//          )
//        ],
//        elevation: 10.0,   // 阴影
//      ),
//      body: null,
//    );
//  }
//}
