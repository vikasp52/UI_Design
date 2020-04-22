import 'package:flutter/material.dart';
import 'package:tealwell/widget/button_widget.dart';
import 'package:tealwell/widget/scafold_body.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRowStructure({String label, String date}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            ButtonWidget(
              label: 'EDIT',
              backgroundColor: Color(0xfff2f1ef),
              textColor: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      );
    }

    return ScaffoldBody(
      title: 'YOUR FAST',
      showBackButton: false,
      showCrossButton: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200.0,
            width: double.infinity,
            color: Color(0xff6c4d8e),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Well done!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'You completed the fast for a total of 8\nminutes.',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.50), fontSize: 20.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 70.0,
          ),
          _buildRowStructure(label: 'STARTED FASTING', date: 'Today, 6:25 AM'),
          _buildRowStructure(label: 'STARTED FASTING', date: 'Today, 6:25 AM'),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
            child: Text(
              'Input Weight   ------',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ButtonWidget(
                    label: 'Delete fast',
                    backgroundColor: Color(0xfff2f1ef),
                    textColor: Colors.black,
                    onPressed: () {}),
                ButtonWidget(label: 'Save fast', onPressed: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }
}
