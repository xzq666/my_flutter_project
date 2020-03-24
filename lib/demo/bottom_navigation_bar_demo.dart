import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomNavigationBarDemoState();
  }
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;

  void onTapHandle(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: onTapHandle,
      type: BottomNavigationBarType.fixed,  // 当item数大于等于4时颜色会自动变白色，需要手动设置成默认的type
      fixedColor: Colors.blue,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text("Explore")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("History")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("List")
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("My")
        )
      ],
    );
  }
}
