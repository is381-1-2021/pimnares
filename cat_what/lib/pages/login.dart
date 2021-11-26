import 'package:cat_what/pages/content_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:cat_what/models/profile.dart';
import 'package:cat_what/pages/setting.dart';
import 'package:cat_what/pages/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
        title: Text("login"),
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
                      RequiredValidator(errorText: "Please enter your email"),
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
                    validator:RequiredValidator(errorText: "Please enter your password"),
                    obscureText: true,
                    onSaved: (String? password){
                      profile.password=password!;
                    },
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.deepOrange[200]),
                      child: Text("Login", style: TextStyle(fontSize: 20),),
                      onPressed: () async{
                        if(formKey.currentState!.validate()){
                        formKey.currentState!.save();
                        try{
                          await FirebaseAuth.instance.signInWithEmailAndPassword(
                            email: profile.email!, 
                            password: profile.password!
                            ).then((value){
                              formKey.currentState!.reset();
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                              return ContentPage(); //มาเปล่ยนตรงนี้
                              }));
                            });                         
                        }on FirebaseAuthException catch(e){
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