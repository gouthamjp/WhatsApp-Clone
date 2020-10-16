import 'package:flutter/material.dart';

import './camera_screen.dart';
import '../screen/chat_screen.dart';
import '../screen/status_screen.dart';
import '../screen/calls_screen.dart';
class HomeScreen extends StatefulWidget {
  var camera;

  HomeScreen(this.camera);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(7, 94, 84, 10),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            DropdownButtonHideUnderline(child: DropdownButton(items: null, onChanged: null , icon: Icon(Icons.more_vert)))
          ],
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ]),
        ),
        body: TabBarView(
            children: [CameraScreen(widget.camera), ChatScreen(), StatusScreen(), CallScreen()]),
      ),
    );
  }
}
