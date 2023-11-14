import 'package:camera/component/otherWidget/simple_Text.dart';
import 'package:camera/view/option/focus.dart';
import 'package:camera/view/option/pen.dart';
import 'package:camera/view/option/rool.dart';
import 'package:camera/view/option/side.dart';
import 'package:camera/view/option/tile.dart';
import 'package:camera/view/option/zoom.dart';
import 'package:flutter/material.dart';

class PageTabView extends StatefulWidget {
  const PageTabView({super.key});

  @override
  State<PageTabView> createState() => _PageTabViewState();
}

class _PageTabViewState extends State<PageTabView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 6, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            indicatorColor: Colors.black45,
            tabs: [
              Tab(
                child: SimpleText(
                  text: "Focus",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
              Tab(
                child: SimpleText(
                  text: "Pen",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
              Tab(
                child: SimpleText(
                  text: "Role",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
              Tab(
                child: SimpleText(
                  text: "H-Side",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
              Tab(
                child: SimpleText(
                  text: "Tile",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
              Tab(
                child: SimpleText(
                  text: "Zoom",
                  fontWeight: FontWeight.bold,
                  size: 10,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FocusScreen(),
            PenScreen(),
            RoleScreen(),
            SideScreen(),
            TileScreen(),
            ZoomScreen()
          ],
        ),
      ),
    );
  }
}
