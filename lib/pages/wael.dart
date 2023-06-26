import 'package:flutter/material.dart';

class Wael extends StatefulWidget {
  const Wael({Key? key}) : super(key: key);

  @override
  State<Wael> createState() => _WaelState();
}

bool toggle = false;
var selectedCountry = 'EG';
bool sy = false;
var gender;
var darkMode = false;

List mobile = [
  {
    "name": "iPad Pro",
    "screen": "6.4",
    "cpu": "8 core",
    "image": "https://m.media-amazon.com/images/I/81S05k6p0xL._AC_SL1500_.jpg"
  },
  {
    "name": "iphone 14",
    "screen": "6.2",
    "cpu": "12 core",
    'image': "https://m.media-amazon.com/images/I/61cwywLZR-L._AC_UL400_.jpg"
  },
  {
    "name": "samason ",
    "screen": "7.4",
    "cpu": "16 core",
    'image': "https://m.media-amazon.com/images/I/71421fxxfHL._AC_UL400_.jpg"
  },
];

class _WaelState extends State<Wael> {
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          key: scaffoldkey,
          appBar: AppBar(
            title: const Text('Title'),
            bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text("Widget One"),
                ),
                Tab(
                  child: Text("Widget One"),
                ),
              ],
            ),
          ),
          drawer: Drawer(
              child: Column(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Ahmed Gamal"),
                  accountEmail: Text("ahmed@gmail.com")),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text("services"),
                leading: Icon(Icons.category),
              ),
              ListTile(
                title: Text("language"),
                leading: Icon(Icons.language),
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help),
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.logout),
              ),
            ],
          )),
          body: TabBarView(
            children: [
              Container(
                child: Text("one"),
                height: 300,
                color: Colors.amber,
              ),
              Container(
                child: Text("Two"),
                height: 300,
                color: Colors.green,
              ),
            ],
          )),
    );
  }
}


