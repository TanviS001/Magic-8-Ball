import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff4D55CC),
      appBar: AppBar(
        backgroundColor: Color(0xff211C84),
        title: Text(
          'Magic 8 Ball',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          )
        ),
      ),
      body: Magic8BallPage(),
    )
  ));
}
class Magic8BallPage extends StatefulWidget {
  const Magic8BallPage({super.key});

  @override
  State<Magic8BallPage> createState() => _Magic8BallPageState();
}

class _Magic8BallPageState extends State<Magic8BallPage> {
  int ballNumber =1;

  void ballNumberChange(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: ballNumberChange,
        child: Image.asset('images/ball$ballNumber.png'),
      )
    );
  }
}

