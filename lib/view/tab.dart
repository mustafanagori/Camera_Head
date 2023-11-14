import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.turn_slight_left_rounded), text: 'Tile'),
                Tab(icon: Icon(Icons.rotate_left_sharp), text: 'Role'),
                Tab(icon: Icon(Icons.panorama_horizontal_rounded), text: 'Pen'),
                Tab(icon: Icon(Icons.signpost_rounded), text: 'H Side'),
                Tab(
                    icon: Icon(Icons.center_focus_strong_outlined),
                    text: 'Focus'),
                Tab(icon: Icon(Icons.zoom_in_outlined), text: 'Zoom'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
