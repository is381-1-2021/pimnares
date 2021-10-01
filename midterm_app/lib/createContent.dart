import 'package:cat_what/gridhome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'models/form_model.dart';

class createContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create your content'),
      ),
      body: contentForm(),
    );
  }
}

class contentForm extends StatefulWidget {
  @override
  _contentForm createState() => _contentForm();
}

class _contentForm extends State<contentForm> {
  final _formKey = GlobalKey<FormState>();
  String _urname = '';
  String _urmail = '';
  String _header = '';
  String _detail = '';

  @override
  Widget build(BuildContext context) {
    return
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter you name.',
                labelText: 'Your name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name.';
                }
              },
              onSaved: (value) {
                _urname = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Enter your e-mail',
                labelText: 'Your e-mail',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your e-mail.';
                }
              },
              onSaved: (value) {
                _urmail = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.favorite),
                hintText: 'Enter your content header.',
                labelText: 'Your content header.',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your content header..';
                }
              },
              onSaved: (value) {
                _header = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.message),
                hintText: 'Enter your content detail.',
                labelText: 'Your content detail.',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your content detail.';
                }
              },
              onSaved: (value) {
                _detail = value!;
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orangeAccent.shade200),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  var response = '$_urname $_urmail $_header $_detail';
                  Navigator.pop(context, response);
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
