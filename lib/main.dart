// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  List<String> items = ['IITs','Indian Institute of Technology, Madras',
  'Indian Institute of Technology, Delhi','Indian Institute of Technology, Bombay',
  'Indian Institute of Technology, Kanpur','Indian Institute of Technology, Kharagpur',
  'NITs','Nation Institute of Technology, Trichy','Nation Institute of Technology, Rourkela',
  'Nation Institute of Technology, Surathkal','Nation Institute of Technology, Warangal',
  'Nation Institute of Technology, Kurukshetra'];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text(
          'IITs & NITs',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Play',
            letterSpacing: 1.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(50.0),
            padding: EdgeInsets.all(10.0),
            height: 80.0,
            decoration: BoxDecoration(
              border: Border.all(
              color: Colors.amberAccent, 
              width: 3.0,
              ),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
            child: Text(
              'Below is a list of IITs and NITs',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontFamily: 'Play',
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView.builder(
            itemCount: items.length, 
            itemBuilder: (context, index) {
              final item = items[index];
              if(item == 'IITs' || item == 'NITs'){
                return ListTile(
                  title: Center(
                    child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: 'Play',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.7,
                    ),
                    ),
                  ),
                  dense: true,
                );
              }
              else{
                return ListTile(
                  title: Center(
                    child: Text(
                    item,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                      fontFamily: 'Play',
                      fontWeight: FontWeight.normal,
                      letterSpacing: 0.7,
                    ),
                  ),
                 ),
                );
              } 
            }
            ),
          ),
        ],
      ),
    );
  }
}

