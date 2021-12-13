
import 'package:final_app/models/expense_model.dart';
import 'package:final_app/models/model.dart';
import 'package:final_app/models/total_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calendar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ExpenseModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => TotalModel(),)
      ],
      child: MyApp(),
    ),
    
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expense Tracker",
      home: Calendar(),
    );
  }
}
