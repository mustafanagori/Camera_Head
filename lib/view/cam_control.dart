import 'package:flutter/material.dart';

class CamControl extends StatefulWidget {
  const CamControl({super.key});

  @override
  State<CamControl> createState() => _CamControlState();
}

class _CamControlState extends State<CamControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Control"),
      ),
      body: Center(
        child: Text('Your main content goes here'),
      ),
      drawer: FuturisticDrawer(),
    );
  }
}

class FuturisticDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Futureistic Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.white),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle Home menu item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings, color: Colors.white),
                title: const Text(
                  'Settings',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Handle Settings menu item tap
                  Navigator.pop(context); // Close the drawer
                },
              ),
              // Add more menu items as needed
            ],
          ),
        ),
      ),
    );
  }
}
