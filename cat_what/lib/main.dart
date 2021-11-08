
import 'package:cat_what/contentFull.dart';
import 'package:cat_what/createContent.dart';
import 'package:cat_what/findMyCat.dart';
import 'package:cat_what/gridhome.dart';
import 'package:cat_what/mainhome.dart';
import 'package:cat_what/model/contentForm_model.dart';
import 'package:cat_what/model/formmodel.dart';
import 'package:cat_what/model/formmodel3.dart';
import 'package:cat_what/model/groomingForm_model.dart';
import 'package:cat_what/pages/ployCat_page.dart';
import 'package:cat_what/services/ploy_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controllers/ploy_controller.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  var services = FirebaseServices();
  var controller = CatController(services);
  
  runApp(CatApp(controller: controller));
}

class CatApp extends StatelessWidget {
  final CatController controller;
  const CatApp({required this.controller});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatPage(
        controller: controller
        ),
    );
  }
}

void old_main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<contentFormModel>(
      create: (context) => contentFormModel(),
        ),
        ChangeNotifierProvider<groomingFormModel>(
          create: (context) => groomingFormModel(),
        ),
        ChangeNotifierProvider<FormModel3>(
          create: (context) => FormModel3(),
        ),
        ChangeNotifierProvider<FormModel2>(
          create: (context) => FormModel2(),
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
        primaryColor: Colors.deepOrange.shade200,
        accentColor: Colors.deepOrange.shade100,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black),
        ),
      ),
      initialRoute: '/1',
      routes: <String, WidgetBuilder>{
        '/1': (context) => maingridhome(),
        '/2': (context) => gridhome(),
        '/3': (context) => createContent(),
        '/4': (context) => MyApp(),
        // '/cat': (context) => FindMyCat(),
        '/5': (context) => contentFull()
      },
    );
  }
}

