import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: const Column(
        children: [
          Text(
            "مرحبا بكم ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'Vibes',
              fontSize: 48,
            ),
          )
        ],
      ),
    );
  }
}
