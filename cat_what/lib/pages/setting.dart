import 'package:cat_what/pages/waitpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cat_what/pages/home.dart';

class LogoutScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: 
      AppBar(title: Text("Setting"),
      backgroundColor: Colors.deepOrange[200],),
      body: Padding
      (padding: const EdgeInsets.all(100.0),
      child: Center(child: Column(
        children: [
          Text(auth.currentUser!.email!,style: TextStyle(fontSize: 25),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.deepOrange[200]),
            child: Text("Log out"),
            onPressed: (){
              auth.signOut().then((value) {
                Navigator.pushReplacement(context, 
                MaterialPageRoute(builder: (context){
                  return WaitPage();
                }));
              });
            },
          )
        ],),
      ),
      ),
    );
  }
}