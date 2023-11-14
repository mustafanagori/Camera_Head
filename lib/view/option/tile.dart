import 'package:flutter/material.dart';

class TileScreen extends StatelessWidget {
  List mylist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(image: AssetImage('assets/image/tile2.jpg')),
        ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Check Camera",
              style: TextStyle(color: Colors.white),
            ))
      ],
    ));
  }
}
