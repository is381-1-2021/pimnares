import 'package:cat_what/model/groomingForm_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GroomingFormResult extends StatefulWidget {
  @override
  _GroomingFormResultState createState() => _GroomingFormResultState();
}

class _GroomingFormResultState extends State<GroomingFormResult> {
  String? _message = 'Here is where the form result are';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Consumer<groomingFormModel>(
                builder: (context, model, child) {
                  return Text(
                      ' Owner : ${model.firstName} ${model.lastName} \n Cat name : ${model.catName} ${model.catBreed} \n Cat weight: ${model.catWeight} kg');
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
