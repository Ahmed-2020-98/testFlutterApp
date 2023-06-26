import 'package:flutter/material.dart';

class TabControler extends StatefulWidget {
  const TabControler({Key? key}) : super(key: key);

  @override
  _TabControlerState createState() => _TabControlerState();
}

class _TabControlerState extends State<TabControler> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
          bottom: TabBar( tabs: [
            Tab(
              child: Text("Widget One"),
            ),
            Tab(
              child: Text("Widget Two"),
            ),
            Tab(
              child: Text("Widget Three"),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Column(children: [
                Expanded(
                    child: Container(
                  width: double.infinity,
                  color: Colors.green,
                  child: Text("ex1"),
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  color: Colors.amber,
                  child: Text("ex1"),
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: Text("ex1"),
                )),
              ]),
            ),
            Text("two"),
            Text("two"),
          ],
        ),
      ),
    );
  }
}
