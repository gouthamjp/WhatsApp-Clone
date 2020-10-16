import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left : 5),
          decoration: BoxDecoration(
            color: Colors.grey[500],
            border: Border.all(color: Colors.green,width: 3),
            shape: BoxShape.circle
          ),
          height: MediaQuery.of(context).size.height * 0.10,
          padding: EdgeInsets.all(10),
          child: Icon(
            Icons.person,
            color: Colors.grey[100],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.grey[500],
          ))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(4),
                child: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(4),
                child: Text(
                  'Time of Last Status',
                  style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class MyStatBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     decoration: BoxDecoration(
       border: Border(bottom :BorderSide(
              color: Colors.grey[500],
            ) )
     ),
      
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left : 5),
            decoration: BoxDecoration(
              color: Colors.grey[500],
              border: Border.all(color: Colors.green,width: 3),
              shape: BoxShape.circle
            ),
            height: MediaQuery.of(context).size.height * 0.10,
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.person,
              color: Colors.grey[100],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(4),
                  child: Text(
                    'My Status',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    'Time of Last Status',
                    style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

