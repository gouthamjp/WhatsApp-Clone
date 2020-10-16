import 'package:flutter/material.dart';
import 'dart:io';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  List<CameraDescription> cameras;

  CameraScreen(this.cameras);
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController control;

  @override
  void initState() {
    super.initState();
    control = new CameraController(widget.cameras[0], ResolutionPreset.high);
    control.initialize().then((_) {
      if (!mounted) {
        return;
      } else {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(child: Text("data"), onPressed: () {}),
    );
  }
}
