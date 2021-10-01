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
      body: FoundFormPage(),
    );
  }
}

class FoundFormPage extends StatefulWidget {
  @override
  _FoundFormPage createState() => _FoundFormPage();
}

class _FoundFormPage extends State<FoundFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _urname = '';
  String _urmail = '';
  String _header = '';
  String _detail = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
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

                  context.read<FormModel>().urname = _urname;
                  context.read<FormModel>().mail = _urmail;
                  context.read<FormModel>().header = _header;
                  context.read<FormModel>().detail = _detail;

                  Navigator.pop(context);
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
