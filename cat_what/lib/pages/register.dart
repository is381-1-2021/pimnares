import 'package:cat_what/pages/welcomepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cat_what/models/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cat_what/pages/home.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot){
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
          if(snapshot.connectionState == ConnectionState.done){
            return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: Text("Sign Up"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator: MultiValidator([
                      RequiredValidator(errorText: "please enter your email"),
                      EmailValidator(errorText: "Required @"),
                    ]),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (String? email){
                      profile.email = email!;
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password", style: TextStyle(fontSize: 20)),
                  TextFormField(
                    validator:RequiredValidator(errorText: "please enter your pwd"),
                    obscureText: true,
                    onSaved: (String? password){
                      profile.password=password!;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.deepOrange[200]),
                      child: Text("Sign Up", style: TextStyle(fontSize: 20)),
                      onPressed: () async{
                        if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        try{
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: profile.email!, 
                            password: profile.password!
                            ).then((value) {
                              formKey.currentState!.reset();
                              Fluttertoast.showToast(
                              msg: "completed",
                              gravity: ToastGravity.TOP);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return WelcomePage();
                              }));
                            });                            
                        }on FirebaseAuthException catch(e){
                          //print(e.code);
                          //print(e.message);
                          Fluttertoast.showToast(
                            msg: e.message!,
                            gravity: ToastGravity.CENTER
                            );
                        }
                        }
                      },
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
        },);
  }
}