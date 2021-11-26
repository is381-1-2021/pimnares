import 'package:cat_what/pages/welcomepage.dart';
import 'package:flutter/material.dart';

class WaitPage extends StatelessWidget {
  int duration = 0;


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 2000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });

    return Scaffold(
      body: Container(
        color: Colors.deepOrange[200],
        alignment: Alignment.center,
        child: Center(
          child: Icon(
            Icons.pets_rounded,
            color: Colors.white,
            size: 100,
          ),
        ),
      ),
    );
  }
}