import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

/*
StatelessWidget类里面的变量都必须是不可变的

StatefulWidget类里面的变量本身也是不可变的，但可以通过继承对应的State实现可变
 */
//class StateManagementDemo extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return StateManagementDemoState();
//  }
//}

//class StateManagementDemoState extends State<StateManagementDemo> {
//  int _count = 0;
//
//  void _increaseCount() {
//    setState(() {
//      _count += 1;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return CounterProvider(
//      count: _count,
//      increaseCount: _increaseCount,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text("StateManagementDemo"),
//          elevation: 0.0,
//        ),
//        body: CounterWrapper(),
//        floatingActionButton: FloatingActionButton(
//          child: Icon(Icons.add),
//          onPressed: () {
//            setState(() {
//              _count += 1;
//            });
//          },
//        ),
//      ),
//    );
//  }
//}

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("StateManagementDemo"),
          elevation: 0.0,
        ),
        body: CounterWrapper(),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          rebuildOnChange: false,
          builder: (context, _, model) => FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: model.increaseCount,
          ),
        ),
      ),
    );
  }
}

class CounterWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Counter(),
    );
  }
}

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, _, model) => ActionChip(
        label: Text("${model.count}"),
        onPressed: model.increaseCount,
      ),
    );
  }
}

class CounterProvider extends InheritedWidget {
  final int count;
  final VoidCallback increaseCount;
  final Widget child;

  CounterProvider({
    this.count,
    this.increaseCount,
    this.child,
  }) : super(child: child);

  static CounterProvider of(BuildContext context) => context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}

class CounterModel extends Model {
  int _count = 0;
  int get count => _count;

  void increaseCount() {
    _count += 1;
    notifyListeners();
  }
}
