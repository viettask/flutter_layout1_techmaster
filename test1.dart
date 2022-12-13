//https://openplanning.net/13107/flutter-stack

import 'package:flutter/material.dart';

void main() {
  runApp(MyTestApp());
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return MaterialApp(home: MyTestHomePage());
  }
}

class MyTestHomePage extends StatelessWidget {
  var timePressed = 0;

  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Scaffold(
        body: Container(
      color: Colors.grey[300],
      width: double.infinity,
      height: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          'Hang thu nhat',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w700, color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Hang thu hai 1',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            ),
            Text(
              'Hang thu hai 2',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hang thu ba',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
            SizedBox(width: 10),
            Text(
              'bold 1',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Divider(
                    height: 5,
                    thickness: 3,
                    indent: 20, //150px from left side
                    endIndent: 20, //150px from right side
                    color: Colors.blueGrey))
          ],
        ),
        Container(
          width: 250,
          height: 250,
          margin: EdgeInsets.all(20),
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.lightGreen,
                  )),
              Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  )),
              Positioned(
                  top: 100,
                  left: 100,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ))
            ],
          ),
        )
      ]),
    ));
  }
}
