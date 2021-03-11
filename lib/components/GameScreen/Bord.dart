import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tictactoe/bloc/bord_bloc.dart';

import 'package:tictactoe/helpers/CustomTheme.dart';
import 'package:tictactoe/view/ResultScren.dart';

class Bord extends StatefulWidget {
  final String nickPlayer1;
  final String nickPlayer2;
  Bord(this.nickPlayer1, this.nickPlayer2);
  @override
  _BordState createState() => _BordState();
}

class _BordState extends State<Bord> with CustomTheme {
  BordBloc bordBloc;
  bool one = true;

  @override
  Widget build(BuildContext context) {
    bordBloc = BlocProvider.of<BordBloc>(context);
    final size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      width: size.width * 0.9,
      height: size.width * 0.9 + 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: BlocBuilder<BordBloc, BordState>(
        bloc: bordBloc,
        builder: (context, state) {
          if (state is UpdateBord) {
            // updated State of Bord
            final value = state.bordState;
            return buildBord(value);
          } else if (state is GameResult) {
            final value = state.bordState;
            final playerOneTurn = state.playerOneTurn;
            Future.delayed(
              Duration(milliseconds: 150),
              () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (c) => Results(
                            result: state.result,
                            turn: playerOneTurn,
                            nickPlayer1: widget.nickPlayer1,
                            nickPlayer2: widget.nickPlayer2,
                          )),
                );
              },
            );
            return buildBord(value);
          }

          // Initial State of bord
          final value = bordBloc.initialState.bord;
          return buildBord(value);
        },
      ),
    );
  }

  GridView buildBord(List<int> value) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return buildBox(index, value[index]);
      },
      itemCount: 9,
    );
  }

  Widget buildBox(int index, int value) {
    // print("Valor agregado" + value.toString() + " index" + index.toString());
    return GestureDetector(
      onTap: () => bordBloc.add(Tap(index: index)),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(10),
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: entryTextBG,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: (value == 0)
                ? Image.asset("assets/y.jpg").image
                : (value == 1)
                    ? Image.asset("assets/x.jpg").image
                    : Image.asset("assets/no.jpg").image,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    bordBloc.close();
    super.dispose();
  }
}
