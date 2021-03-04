import 'package:flutter/material.dart';

class PickShape extends StatefulWidget {
  _PickPageState createState() => _PickPageState();
}

class _PickPageState extends State<PickShape> {
  String groupValueX = 'X';
  void setGroupvalueX(value) {
    setState(() {
      groupValueX = value;
    });
  }

  String groupValueO = 'O';
  void setGroupvalueO(value) {
    setState(() {
      groupValueO = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Ingresar jugadores",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DancingScript'),
                )
              ]),
        ),
      ),
    );
  }
}
