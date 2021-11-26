import 'package:cat_what/models/newcontent_model.dart';
import 'package:cat_what/pages/content_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class NewContent extends StatefulWidget {
  @override
  _NewContentState createState() => _NewContentState();
}

class _NewContentState extends State<NewContent> {
  final formKey = GlobalKey<FormState>();
  Content myContent = Content(header: '', detail: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _ContentCollection =
      FirebaseFirestore.instance.collection("cw_content");

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
                  title: Center(child: Text("Create your new content")),
                  actions: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
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
                            "Topic",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextFormField(
                            validator: RequiredValidator(
                                errorText: "Enter your topic here"),
                            onSaved: (header) {
                              myContent.header = header!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Detail",
                            style: TextStyle(fontSize: 18),
                          ),
                          TextFormField(
                            validator: RequiredValidator(
                                errorText: "Enter your details here"),
                            onSaved: (detail) {
                              myContent.detail = detail!;
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            child: Center(
                              child: ElevatedButton(
                                child: Text("Submit"),
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepOrange[200]),
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    formKey.currentState!.save(); //เรียกทุกตัว
                                    await _ContentCollection.add({
                                      "header": myContent.header,
                                      "detail": myContent.detail,
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
