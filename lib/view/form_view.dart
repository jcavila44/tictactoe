import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tictactoe/components/InputsPlayer.dart';
import 'package:tictactoe/components/home_play_button.dart';
import 'package:tictactoe/theme/theme.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'GameScreen.dart';
// import 'package:tictactoe/view/start_view.dart';

class FormView extends StatefulWidget {
  @override
  _FormViewState createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  final _formKey = GlobalKey<FormState>();
  FocusNode focusNode;

  var _nickPlayer1;
  var _nickPlayer2;

  final nick1 = TextEditingController();
  final nick2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: SafeArea(
            child: Scaffold(
              body: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.75],
                    colors: [
                      MyTheme.blue,
                      MyTheme.violet,
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          InputPlayer(
                            placeholder: 'Nick jugador #1',
                            placeholderSize: 25,
                            controllerFunct: nick1,
                          ),
                          SizedBox(height: 20),
                          InputPlayer(
                            placeholder: 'Nick jugador #2',
                            placeholderSize: 25,
                            controllerFunct: nick2,
                          ),
                          SizedBox(height: 50),
                          PlayButton(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              setState(() {
                                _nickPlayer1 = nick1.text;
                                _nickPlayer2 = nick2.text;
                              });

                              if (_nickPlayer1 != '' && _nickPlayer2 != '') {
                                Navigator.of(context).push(
                                  CupertinoPageRoute(
                                    builder: (context) => GameScreen(
                                        secondPlayer: 'Player 2',
                                        nickPlayer1: _nickPlayer1,
                                        nickPlayer2: _nickPlayer2),
                                  ),
                                );
                              } else {
                                Fluttertoast.showToast(
                                    msg:
                                        'Los Nick jugador #1 y Nick jugador #2 deben estar llenos.',
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 18.0);
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
