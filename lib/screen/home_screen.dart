import 'package:flutter/material.dart';

import './camera_screen.dart';
import '../screen/chat_screen.dart';
import '../screen/status_screen.dart';
import '../screen/calls_screen.dart';

class HomeScreen extends StatefulWidget {
 
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
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Icon(Icons.search),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      items: <String>[
                        'New Group',
                        'New Brodcast',
                        'WhatsApp Web',
                        'Starred Messages',
                        'Settings'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      icon: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                      onChanged: (String a) {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            )
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
        body: TabBarView(children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ]),
      ),
    );
  }
}
