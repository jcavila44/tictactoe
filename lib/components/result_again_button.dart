import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AgainButton extends StatefulWidget {
  final VoidCallback onTap;
  AgainButton({@required this.onTap});
  @override
  _AgainButtonState createState() => _AgainButtonState();
}

class _AgainButtonState extends State<AgainButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        alignment: Alignment.center,
        width: 80,
        height: 80,
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
          Icons.replay_outlined,
          size: 70,
        ),
      ),
    );
  }
}
