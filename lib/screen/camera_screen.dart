import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({Key key}) : super(key: key);
  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController _controller;
  Future<void> _controllerInizializer;

  Future<CameraDescription> getCamera() async {
    final c = await availableCameras();
    return c.first;
  }

  @override
  void initState() {
    super.initState();

    getCamera().then((camera) {
      setState(() {
        _controller = CameraController(camera, ResolutionPreset.high);
        _controllerInizializer = _controller.initialize();
      });
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _controllerInizializer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return CameraPreview(_controller);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
