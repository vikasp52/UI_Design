import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:tealwell/screens/screen3.dart';
import 'package:tealwell/widget/button_widget.dart';
import 'package:tealwell/widget/countdowntimer.dart';
import 'package:tealwell/widget/scafold_body.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _buildRowStructure({String image, String description}) {
      return Padding(
        padding:
            const EdgeInsets.only(bottom: 4.0, top: 4.0, left: 8.0, right: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/$image',
                  width: 35,
                  height: 35,
                )),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
                flex: 8,
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                )),
          ],
        ),
      );
    }

    return ScaffoldBody(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Center(
              child: SizedBox(
                  height: 120.0, width: 120.0, child: CountDownTimer())),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Based on the research of scientiest Dr. Satchin Panda, this fast emulates the body\'s natural clock by fasting roughly after sunset to morning.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black38, fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonWidget(
            label: 'Prepare fast',
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => Screen3())),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              strokeWidth: 2,
              padding: EdgeInsets.all(20),
              color: Colors.grey,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: Column(
                  children: <Widget>[
                    Text(
                      'TIPS TO PREPARE FOR THE FAST',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildRowStructure(
                      image: '1.png',
                      description:
                          'Hydrate with water before, during and after the fast.',
                    ),
                    _buildRowStructure(
                      image: '2.png',
                      description:
                          'Avoide processed and unhealthy foods before and after fasting.',
                    ),
                    _buildRowStructure(
                      image: '3.png',
                      description:
                          'prepare healthy, fresh foods for your first meal after the fast.',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
