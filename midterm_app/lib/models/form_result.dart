import 'package:cat_what/createContent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'form_model.dart';

class formResult extends StatefulWidget {
  @override
  _formResultState createState() => _formResultState();
}

class _formResultState extends State<formResult> {
  String? _message = 'Here is where you can see your new content result';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New content form result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<FormModel>(
                builder: (context, model, child) {
                  return Text('Form result - ${model.urname} ${model.mail} ${model.header} ${model.header}');
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => createContent(),
                  ),
                );
              },
              child: Text('Create more content'),
            ),
          ],
        ),
      ),
    );
  }
}