import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PlayButton extends StatefulWidget {
  final VoidCallback onTap;
  PlayButton({@required this.onTap});
  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26.withOpacity(0.3),
                blurRadius: 10,
                offset: Offset(5, 5))
          ],
        ),
        child: Icon(
          Icons.play_arrow,
          size: 100,
        ),
      ),
    );
  }
}
