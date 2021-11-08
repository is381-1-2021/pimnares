import 'package:cat_what/model/form_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'mainhome.dart';
import 'model/formmodel3.dart';
import 'model/moss_model.dart';

class MossHelp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Help me solve my cat probelm",style:  (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
        actions: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white,),
              tooltip: 'Button1',
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => maingridhome(),
                  ),
                );
              },
            ),
          ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/mosscat1.jpg',height: 300,width: 300,),
              Text('\nแจ้งปัญหากับผู้เชียวชาญ\nคุณสามารถกรอกข้อมูล น้องแมว ของคุณ \nเพื่อให้ผู้เชียวชาญจาก CatWhat ช่วยแก้ไขปัญหาของคุณได้',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
            Padding(
              padding: const EdgeInsets.all(30.0),
            child: Consumer<FormModel3>(
                builder: (context, model, child) {
                  return Text('problem information : \n ${model.nameofkat}\n ${model.breed}\n ${model.age}\n ${model.problem}');
                },
            ),
            ),
            ],
          ),
      ),
      ),
      floatingActionButton: FloatingActionButton.extended(
      onPressed: (){
        Navigator.push(
          context, 
          MaterialPageRoute(
          builder: (context) => MossFormModel(),
          ),
        );
      }, 
      icon: Icon(Icons.message_sharp,size: 30,color: Colors.white,),
      backgroundColor: Colors.deepOrange[300],
      label: Text('Inform Probelm',style: TextStyle(color: Colors.white),),
    ),
    );
  }
}