import 'package:cat_what/createContent.dart';
import 'package:cat_what/gridhome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat What',
      theme: ThemeData(
        primaryColor: Colors.orange,
        accentColor: Colors.orange,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/2',
      routes: <String, WidgetBuilder>{
        '/2': (context) => gridhome(),
        '/3': (context) => createContent()
      },
    );
  }
}

