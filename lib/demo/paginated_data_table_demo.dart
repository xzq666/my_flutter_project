import 'package:flutter/material.dart';
import '../model/post.dart';

class PostDataSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  int get rowCount => _posts.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[
        DataCell(Text(post.title)),
        DataCell(Text(post.author)),
        DataCell(Image.network(post.imageUrl)),
      ]
    );
  }

  void _sort(getField(post), ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }

      final aValue = getField(a);
      final bValue = getField(b);

      return Comparable.compare(aValue, bValue);
    });

    notifyListeners();
  }
}

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PaginatedDataTableDemoState();
  }
}

class PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex;
  bool _sortAscending = true;

  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Posts'),
              rowsPerPage: 5,  // 每一页显示行数，默认10
              source: _postsDataSource,
              sortColumnIndex: _sortColumnIndex,  // 排序索引号，表示第0列
              sortAscending: _sortAscending,  // 默认true升序，flase表示降序
              columns: [
                DataColumn(
                  label: Text("Title"),
                  onSort: (int columnIndex, bool ascending) {
                    _postsDataSource._sort((post) => post.title.length, ascending);
                    setState(() {
                      _sortColumnIndex = columnIndex;
                      _sortAscending = ascending;
                    });
                  },
                ),
                DataColumn(
                    label: Text("Author")
                ),
                DataColumn(
                    label: Text("Image")
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
