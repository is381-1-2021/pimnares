import 'package:Cat_what/models/content.dart';
import 'package:flutter/material.dart';

class SelectedContentPage extends StatelessWidget {

  // Content selectedContent;

  // SelectedContentPage({ this.selectedContent });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.pets_outlined,
              color: Colors.white,size: 30,
            ),
            SizedBox(width: 10,),
            Text("Hi",//this.selectedContent.header,
            style: TextStyle(color: Colors.black, fontSize: 20),
            )
          ]
        ),
      ),
    );
  }
}
