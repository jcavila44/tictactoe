import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tictactoe/src/view/pickView.dart';
import 'package:tictactoe/src/view/theme.dart';
import 'package:tictactoe/src/view/logoView.dart';

class StartPage extends StatelessWidget {
  StartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.95],
                colors: [
                  MyTheme.blue,
                  MyTheme.violet,
                ],
              ),
            ),
            child: Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Triqui",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 65,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'DancingScript'),
                    ),
                    Logo(),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => PickShape(),
                            ),
                          );
                        },
                        child: Text('Jugar'),
                      ),
                    ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
