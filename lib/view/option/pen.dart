import 'package:flutter/material.dart';

class PenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/image/camera2.jpg')),
      ),
    );
  }
}
