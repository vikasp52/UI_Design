import 'package:flutter/material.dart';
import 'package:tealwell/screens/screen2.dart';
import 'package:tealwell/widget/scafold_body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<int> colors = [
    0xfff17e6a,
    0xfff1ac5d,
    0xff6c4d8e,
    0xff708ce1,
    0xff238e92
  ];

  @override
  Widget build(BuildContext context) {
    Widget _buildCard({int index}) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => Screen2())),
          child: Card(
            elevation: 7.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(colors[index]),
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '13 HOURS',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.50),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Circadin Rhythm',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'This fast start at sunset and lasts to morning.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.50),
                        fontSize: 20.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    return ScaffoldBody(
      showBackButton: false,
        showCrossButton: false,
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return _buildCard(index: index);
            }));
  }
}
