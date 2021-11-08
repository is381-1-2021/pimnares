
import 'package:cat_what/contentFull.dart';
import 'package:cat_what/createContent.dart';
import 'package:cat_what/delayPage.dart';
import 'package:cat_what/firstAidFull.dart';
import 'package:cat_what/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'contentForm_model.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<contentFormModel>(
      create: (context) => contentFormModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat What',
      theme: ThemeData(
        fontFamily: 'FCPalette',
        primaryColor: Colors.deepOrange.shade200,
        accentColor: Colors.deepOrange.shade100,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/4',
      routes: <String, WidgetBuilder>{
        '/1': (context) => FirstAidFull(),
        '/4': (context) => FirstView(),
        '/3': (context) => createContent(),
        '/2': (context) => MyHome(),
        '/5': (context) => contentFull()
      },
    );
  }
}

