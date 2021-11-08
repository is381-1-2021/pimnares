import 'package:cat_what/contentForm_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormResult extends StatefulWidget {
  @override
  _FormResultState createState() => _FormResultState();
}

class _FormResultState extends State<FormResult> {
  String? _message = 'Here is where the form result are';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Consumer<contentFormModel>(
                builder: (context, model, child) {
                  return Text(
                      ' Your name : ${model.urName} \n Your email : ${model.urMail} \n Your content: ${model.header}\n ${model.detail}');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
