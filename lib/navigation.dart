import 'package:camera/controller/navigation_controller.dart';
import 'package:camera/view/cam_control.dart';
import 'package:camera/view/control_layout.dart';
import 'package:camera/view/dashboard.dart';
import 'package:camera/view/motion_presets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavigation extends StatefulWidget {
  MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  NavigatorController bottomNavigationContoller =
      Get.put(NavigatorController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: WillPopScope(
          onWillPop: () async {
            return false;
          },
          child: IndexedStack(
            index: bottomNavigationContoller.selectedIndex.value,
            children: const [
              Dashboard(),
              CamControl(),
              ControlLayout(),
              Motion_Presets(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            currentIndex: bottomNavigationContoller.selectedIndex.value,
            onTap: bottomNavigationContoller.changeIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Dashboard",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined),
                label: "Cam_Control",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.layers),
                label: "Layout",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.motion_photos_off_outlined),
                label: "Motion_Pres",
                backgroundColor: Colors.white,
              ),
            ]),
      ),
    );
  }
}
