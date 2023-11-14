import 'package:flutter/material.dart';

class ControlLayout extends StatefulWidget {
  const ControlLayout({super.key});

  @override
  State<ControlLayout> createState() => _ControlLayoutState();
}

class _ControlLayoutState extends State<ControlLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Control Layout"),
      ),
      body: GridView.count(
        reverse: false,
        primary: true,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 5,
        mainAxisSpacing: 6,
        crossAxisCount: 3,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //   color: Color.fromARGB(66, 228, 200, 200),
                  border: Border.all(
                    color: Colors.black,
                  )),
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(8),
              child: Image.asset("assets/image/1.png")),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // color: Color.fromARGB(66, 228, 200, 200),
                  border: Border.all(
                    color: Colors.black,
                  )),
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(8),
              child: Image.asset("assets/image/2.png")),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  //color: Color.fromARGB(66, 228, 200, 200),
                  border: Border.all(
                    color: Colors.black,
                  )),
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(8),
              child: Image.asset("assets/image/2.avif")),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black,
              ),
            ),
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              "assets/image/10.png",
            ),
          ),
        ],
      ),
    );
  }
}
