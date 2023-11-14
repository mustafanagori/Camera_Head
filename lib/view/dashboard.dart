import 'package:camera/component/Dashboard/option.dart';
import 'package:camera/view/option/focus.dart';
import 'package:camera/view/option/pen.dart';
import 'package:camera/view/option/rool.dart';
import 'package:camera/view/option/side.dart';
import 'package:camera/view/option/tile.dart';
import 'package:camera/view/option/zoom.dart';
import 'package:camera/view/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late Widget currentScreen = TileScreen();

  @override
  void initState() {
    super.initState();
    // Set the default screen
    currentScreen = TileScreen();
  }

  void navigateToScreen(Widget screen) {
    setState(() {
      currentScreen = screen;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashobard"),
          //leading: Icon(Icons.menu),
        ),
        drawer: Profile(),
        body: Row(
          children: [
            Expanded(
              child: Container(
                //   width: w * 0.13,

                decoration: const BoxDecoration(
                  color: Colors.black38,
                  //borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Option(
                      text: "Tile",
                      icon: const Icon(
                        Icons.turn_slight_left_rounded,
                      ),
                      onPressed: () {
                        navigateToScreen(TileScreen());
                      },
                    ),
                    Option(
                      text: "Role",
                      icon: Icon(
                        Icons.rotate_left_sharp,
                      ),
                      onPressed: () {
                        navigateToScreen(RoleScreen());
                      },
                    ),
                    Option(
                      text: "pen",
                      icon: Icon(
                        Icons.panorama_horizontal_rounded,
                      ),
                      onPressed: () {
                        navigateToScreen(PenScreen());
                      },
                    ),
                    Option(
                      text: "H side",
                      icon: Icon(
                        Icons.signpost_rounded,
                      ),
                      onPressed: () {
                        navigateToScreen(SideScreen());
                      },
                    ),
                    Option(
                      text: "Focus",
                      icon: Icon(
                        Icons.center_focus_strong_outlined,
                      ),
                      onPressed: () {
                        navigateToScreen(FocusScreen());
                      },
                    ),
                    Option(
                      text: "Zoom",
                      icon: Icon(
                        Icons.zoom_in_outlined,
                      ),
                      onPressed: () {
                        navigateToScreen(ZoomScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.black45,
                child: currentScreen,
              ),
            )
          ],
        ));
  }
}
