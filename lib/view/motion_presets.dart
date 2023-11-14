import 'package:flutter/material.dart';

class Motion_Presets extends StatefulWidget {
  const Motion_Presets({super.key});

  @override
  State<Motion_Presets> createState() => _Motion_PresetsState();
}

class _Motion_PresetsState extends State<Motion_Presets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Motion Presets"),
      ),
    );
  }
}
