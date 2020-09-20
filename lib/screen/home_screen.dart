import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromRGBO(7, 94, 84, 10),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert)
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
            children: [Text("pg1"), Text("pg1"), Text("pg1"), Text("pg1")]),
      ),
    );
  }
}
