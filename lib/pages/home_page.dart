import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late double _deviceHeight, _deviceWidth;
  _HomePageState();

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: _deviceHeight * 0.15,
        title: const Text(
          "Taskly!",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: _listTasks(),
      floatingActionButton: _addTask(),
    );
  }

  Widget _listTasks() {
    return ListView(
      children: [
        ListTile(
          title: const Text(
            "Make a sandwich!",
            style: TextStyle(
              decoration: TextDecoration.lineThrough,
            ),
          ),
          subtitle: Text(
            DateTime.now().toString(),
          ),
          trailing: const Icon(
            Icons.check_box_outlined,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

Widget _addTask() {
  return FloatingActionButton(
    onPressed: () {},
    child: const Icon(
      Icons.add,
    ),
  );
}
