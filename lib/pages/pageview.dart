import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/login.dart';

class Pageview extends StatefulWidget {
  const Pageview({Key? key}) : super(key: key);

  @override
  _PageviewState createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(
        height: 200,
        color: Colors.amber,
        child: PageView(children: [
        
          Image.network("https://st2.depositphotos.com/1735158/10250/i/950/depositphotos_102501514-stock-photo-man-with-single-red-rose.jpg"),
          const Login(),
        ]),
      ),
    );
  }
}
