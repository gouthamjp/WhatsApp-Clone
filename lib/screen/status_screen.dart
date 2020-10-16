import 'package:flutter/material.dart';

import '../widgets/status_bar.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        MyStatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar(),
        StatBar()
      ]),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.camera_alt)),
    );
  }
}
