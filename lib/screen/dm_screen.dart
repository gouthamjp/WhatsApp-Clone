import 'package:flutter/material.dart';

class DmScreen extends StatefulWidget {
  @override
  _DmScreenState createState() => _DmScreenState();
}

class _DmScreenState extends State<DmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector
        (
          onTap: (){Navigator.pop(context);},
          child: Icon(Icons.arrow_back,color:Colors.white)),
          title: Text("Name"),
        backgroundColor: Color.fromRGBO(7, 94, 84, 10),
        actions: [
          Icon(Icons.videocam),
          SizedBox(width : 20),
          Icon(Icons.phone),
          SizedBox(width : 20),
          DropdownButtonHideUnderline(child: DropdownButton(items: null, onChanged: null , icon: Icon(Icons.more_vert)))
        ],
      ),
    
    );
  }
}