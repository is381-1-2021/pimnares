import 'package:flutter/material.dart';
import 'package:cat_what/Second_page.dart';
import 'package:cat_what/model/formmodel3.dart';
import 'package:provider/src/provider.dart';

class MossFormModel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help me solve my cat problem',
            style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: ProbelmFormPage(),
      );
  }
}

class ProbelmFormPage extends StatefulWidget {
  @override
  _ProbelmFormPage createState() => _ProbelmFormPage();
}

class _ProbelmFormPage extends State<ProbelmFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _nameofkat = '';
  String _breed = '';
  String _age = '';
  String _probelm = '';
  
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
              hintText: 'ชื่อน้องแมวของคุณ',
              labelText: 'Cat name',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Cat Name.';
              }
            },
            onSaved: (value) {
              _nameofkat = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'สายพันธุ์ของแมวคุณ',
              labelText: 'Your Cat Breed',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Your Cat is breed.';
              }
            },
            onSaved: (value) {
              _breed = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'อายุของน้องแมว',
              labelText: 'Your Cat Ages',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter yyour cat age.';
              }
             },
            onSaved: (value) {
              _age = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'ปัญหาที่คุณพบ',
              labelText: 'Description',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Description is required ,So our Professsor can analyse the probelm';
              }
            },
            onSaved: (value) {
              _probelm = value!;
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange[300],
            ),
          child: Text('Submit',style: TextStyle(color: Colors.white),),
            onPressed: () {
              
              
              if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
          
              context.read<FormModel3>().nameofkat = _nameofkat;
              context.read<FormModel3>().breed = _breed;
              context.read<FormModel3>().age = _age;
              context.read<FormModel3>().problem = _probelm;

              final snackBar = SnackBar(
                content: Text(
                          'Your information has been submitted.'
              ),
                backgroundColor: Colors.deepOrangeAccent[200],
              );
                  
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
            }  
          }  
          ),
          ],
        ),
      ),
    );
  }
}