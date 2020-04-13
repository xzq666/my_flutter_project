import 'package:flutter/material.dart';
import 'package:my_flutter_project/demo/navigator_demo.dart';
import 'demo/listview_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/bottom_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/form_demo.dart';
import 'demo/simple_dialog_demo.dart';
import 'demo/alert_dialog_demo.dart';
import 'demo/bottom_sheet_demo.dart';
import 'demo/snack_bar_demo.dart';
import 'demo/expansion_panel_demo.dart';
import 'demo/chip_demo.dart';
import 'demo/data_table_demo.dart';
import 'demo/paginated_data_table_demo.dart';
import 'demo/card_demo.dart';
import 'demo/stepper_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
//      home: Home(),
//      home: NavigatorDemo(),
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: "About",),
        '/form': (context) => FormDemo(),
        '/simpleDialog': (context) => SimpleDialogDemo(),
        '/alertDialog': (context) => AlertDialogDemo(),
        '/bottomSheet': (context) => BottomSheetDemo(),
        '/snackBar': (context) => SnackBarDemo(),
        '/expansionPanel': (context) => ExpansionPanelDemo(),
        '/chip': (context) => ChipDemo(),
        '/dataTable': (context) => DataTableDemo(),
        '/paginatedDataTable': (context) => PaginatedDataTableDemo(),
        '/card': (context) => CardDemo(),
        '/stepper': (context) => StepperDemo(),
      },
      theme: ThemeData(
        primaryColor: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white30,
        accentColor: Colors.blue, // 水波纹效果
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
                onPressed: () {
                  Navigator.pushNamed(context, "/stepper");
                }
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
