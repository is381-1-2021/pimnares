import 'package:flutter/material.dart';
import 'grooming_form.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              height: 180,
              child: Image.asset(
                'assets/images/cat.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10.0),
              child: Center(
                child: Text(
                  'Welcome to our groom delivery.',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2.0),
              child: Center(
                child: Text(
                  'No time for grooming? No worry.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30.0),
              child: Center(
                child: Text(
                  'Here we delivery all services to yourplace. ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.cyan[100],
              shape: CircleBorder(),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(80),
                child: Text(
                  'pick services',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
