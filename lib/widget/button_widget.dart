import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color backgroundColor, textColor;
  final String label;
  final VoidCallback onPressed;

  ButtonWidget({this.backgroundColor, this.textColor, this.label,this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          label,
          style: TextStyle(
            color: textColor??Colors.white,
            //fontSize: 20.0
          ),
        ),
      ),
      color: backgroundColor ?? Color(0xff6c4d8e),
    );
  }
}
