import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChipDemoState();
  }
}

class ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Orange',
  ];

  String _action = "Nothing";

  List<String> _selected = [];

  String _choice = "Nothing";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ChipDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text("许"),
                  ),
                ),
                Chip(
                  label: Text('Xuzq from China!'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage("https://resources.ninghao.net/images/wanghao.jpg"),
                  ),
                ),
                Chip(
                  label: Text("City"),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: "Remove this tag",
                ),
                Divider(
                  color: Colors.grey,
//                  height: 32.0,  // 离待分割视图的距离
//                  indent: 32.0,  // 左边缩进
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
//                  height: 32.0,  // 离待分割视图的距离
//                  indent: 32.0,  // 左边缩进
                ),
                Container(
                  width: double.infinity,
                  child: Text("ActionChip: $_action"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
//                  height: 32.0,  // 离待分割视图的距离
//                  indent: 32.0,  // 左边缩进
                ),
                Container(
                  width: double.infinity,
                  child: Text("FilterChip: ${_selected.toString()}"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  width: double.infinity,
                  child: Text("ChoiceChip: $_choice"),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.orange,
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Orange',
            ];
            _selected = [];
            _choice = "Nothing";
          });
        },
      ),
    );
  }
}
