import 'package:flutter/material.dart';

class ScaffoldBody extends StatelessWidget {
  final Widget body;
  final bool showBackButton;
  final bool showCrossButton;
  final double elevation;
  final String title;

  ScaffoldBody(
      {this.body,
      this.showBackButton = true,
      this.showCrossButton = false,
        this.title,
      this.elevation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: elevation ?? 10.0,
        centerTitle: true,
        leading: !showBackButton
            ? null
            : IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          !showCrossButton
              ? SizedBox()
              : IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  onPressed: () => Navigator.pop(context)),
          SizedBox(width: 30.0,)
        ],
        title: Text(
          title??'FASTS',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: body,
    );
  }
}
