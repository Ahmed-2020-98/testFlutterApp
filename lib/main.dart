import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/bottomnavigationbar.dart';
import 'package:flutter_application_2/pages/dashboardui.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/pages/pageview.dart';
import 'package:flutter_application_2/pages/tabControler.dart';
import 'package:flutter_application_2/pages/textfield.dart';
import 'package:flutter_application_2/pages/wael.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Textfield(),
      debugShowCheckedModeBanner: false,
    );
  }
}
