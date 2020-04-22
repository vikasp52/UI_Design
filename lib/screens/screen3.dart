import 'package:flutter/material.dart';
import 'package:tealwell/screens/screen4.dart';
import 'package:tealwell/widget/button_widget.dart';
import 'package:tealwell/widget/countdowntimer.dart';
import 'package:tealwell/widget/scafold_body.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildColumnStructure({String label, String time}) {
      return Column(
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          )
        ],
      );
    }

    return ScaffoldBody(
      elevation: 0.0,
      title: '',
      showBackButton: false,
      showCrossButton: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You\'re fasting',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 25.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ButtonWidget(
            label: 'CIRCADIAN RHYTHM',
            onPressed: () {},
          ),
          SizedBox(
            height: 50.0,
          ),
          Center(
              child: SizedBox(
                  height: 300.0,
                  width: 300.0,
                  child: CountDownTimer(
                    fontSize: 70.0,
                  ))),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildColumnStructure(
                label: 'STARTED FASTING',
                time: 'Today, 5:43 AM',
              ),
              _buildColumnStructure(
                label: 'STARTED ENDING',
                time: 'Today, 6:43 AM',
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          ButtonWidget(
            label: 'End fast',
            backgroundColor: Color(0xfff2f1ef),
            textColor: Colors.black,
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => Screen4())),
          ),
        ],
      ),
    );
  }
}
