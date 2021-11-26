
import 'package:cat_what/OLD/home_screen.dart';
import 'package:cat_what/bar.dart';
import 'package:cat_what/OLD/contentFull.dart';
import 'package:cat_what/OLD/createContent.dart';
import 'package:cat_what/OLD/findMyCat.dart';
import 'package:cat_what/OLD/gridhome.dart';
import 'package:cat_what/OLD/mainhome.dart';
import 'package:cat_what/pages/setting.dart';
import 'package:cat_what/pages/content_detail.dart';
import 'package:cat_what/pages/content_page.dart';
import 'package:cat_what/pages/home.dart';
import 'package:cat_what/pages/login.dart';
import 'package:cat_what/pages/ployCat_page.dart';
import 'package:cat_what/pages/waitpage.dart';
import 'package:cat_what/start.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'old_model/contentForm_model.dart';
import 'old_model/formmodel.dart';
import 'old_model/formmodel3.dart';
import 'old_model/groomingForm_model.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  runApp(CatApp());
}

class CatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth.instance.authStateChanges().listen((User? user) {
    //   if (user == null) {
    //     print('User is currently signed out');
    //     context.read<FormModel>().isLogin = false;
    //   } else {
    //     print('User is signed in');
    //     context.read<FomModel>().isLogin= true;
    //   }
    // });
    return MaterialApp(
      home: WaitPage()//ContentPage(),
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/details': (BuildContext context) => ContentDetailsPage()
      // },
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
//        '/2': (context) => gridhome(),
        '/3': (context) => createContent(),
        '/4': (context) => MyApp(),
        // '/cat': (context) => FindMyCat(),
        '/5': (context) => contentFull()
      },
    );
  }
}

