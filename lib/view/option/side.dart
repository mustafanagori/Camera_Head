import 'package:flutter/material.dart';

class SideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/image/side.jpg')),
      ),
    );
  }
}
