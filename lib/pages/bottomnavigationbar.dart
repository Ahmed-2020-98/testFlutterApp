import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/wael.dart';

import 'login.dart';

class Bottomnavigationbar extends StatefulWidget {
  const Bottomnavigationbar({Key? key}) : super(key: key);

  @override
  _BottomnavigationbarState createState() => _BottomnavigationbarState();
}

class _BottomnavigationbarState extends State<Bottomnavigationbar> {
  var selected = 1;
  List<Widget> widgetpages = [
    Wael(),
    Text("Bassel"),
    Login(),
    
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true, 
        backgroundColor: Colors.deepPurple,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selected,
          onTap: (index) {
            setState(() {
              selected = index;
            });
          },
          backgroundColor: Colors.deepPurple,
          selectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: "Language", icon: Icon(Icons.language)),
          ]),
      body: widgetpages.elementAt(selected)
    );
  }
}
