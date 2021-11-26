import 'package:cat_what/models/student.dart';
import 'package:cat_what/pages/setting.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>(); //ป้อนข้อมูลยัง สถานะในฟอร์มให้ดึง
  Student myStudent = Student(fname: '', email: '', lname: '', info: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _studentCollection =
      FirebaseFirestore.instance.collection("postinfo");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Padding(
              padding: const EdgeInsets.all(0.0),
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.deepOrange[200],
                  title: Center(child: Text("โพสต์")),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                body: Container(
                  padding: EdgeInsets.all(20),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ชื่อ",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator:
                                RequiredValidator(errorText: "กรุณาใส่ชื่อ"),
                            onSaved: (fname) {
                              myStudent.fname = fname!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "ชื่อน้องแมว",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator: RequiredValidator(
                                errorText: "กรุณาป้อนชื่อน้องแมวของคุณ"),
                            onSaved: (lname) {
                              myStudent.lname = lname!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "อีเมลล์",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator: MultiValidator([
                              EmailValidator(
                                  errorText: "กรุณาป้อนอีเมลล์ที่ถูกต้อง"),
                              RequiredValidator(errorText: "โปรดใส่เมลล์")
                            ]),
                            onSaved: (email) {
                              myStudent.email = email!;
                            },
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "รายละเอียด",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextFormField(
                            validator:
                                RequiredValidator(errorText: "กรุณาป้อนข้อมูล"),
                            onSaved: (info) {
                              myStudent.info = info!;
                            },
                          ),
                          SizedBox(
                            child: Center(
                              child: ElevatedButton(
                                child: Text("Meow"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange[200]),
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState!.save(); //เรียกทุกตัว
                                    await _studentCollection.add({
                                      "fname": myStudent.fname,
                                      "catname": myStudent.lname,
                                      "email": myStudent.email,
                                      "info": myStudent.info,
                                    });
                                    formKey.currentState!.reset();
                                  }
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
