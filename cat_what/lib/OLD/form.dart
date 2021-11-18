import 'package:cat_what/old_model/formmodel.dart';
import 'package:flutter/material.dart';
import 'package:cat_what/OLD/gridhome.dart';
import 'package:provider/src/provider.dart';

class FormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('I Found Your Cat!'),
        backgroundColor: Colors.deepOrange[300],
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
  String _nameofcat = '';
  String _name = '';
  String _where = '';
  String _tel = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Image.asset('assets/catt.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.pets),
                hintText: 'ชื่อน้องแมวที่เจอ',
                labelText: 'Cat name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Cat Name.';
                }
              },
              onSaved: (value) {
                _nameofcat = value!;
              },
              initialValue: context.read<FormModel2>().nameofcat,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'ชื่อคนใจดีที่พบแมว',
                labelText: 'Your Name',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Name.';
                }
              },
              onSaved: (value) {
                _name = value!;
              },
              initialValue: context.read<FormModel2>().name,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.location_on_rounded),
                hintText: 'สถานที่พบน้อง',
                labelText: 'Location',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Location.';
                }
              },
              onSaved: (value) {
                _where = value!;
              },
              initialValue: context.read<FormModel2>().location,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.call),
                hintText: 'เบอร์ติดต่อ',
                labelText: 'Phone Number',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Phone Number is required';
                }
              },
              onSaved: (value) {
                _tel = value!;
              },
              initialValue: context.read<FormModel2>().tel,
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange[300],
              ),
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();

                  context.read<FormModel2>().nameofcat = _nameofcat;
                  context.read<FormModel2>().name = _name;
                  context.read<FormModel2>().location = _where;
                  context.read<FormModel2>().tel = _tel;

                  final response = 'Successful';
                  final snackBar = SnackBar(content: Text(response,
                  style: TextStyle(fontSize: 15),),
                backgroundColor: Colors.deepOrange[300],);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.pop(context);
                }
              }),
        ],
      ),
    );
  }
}
