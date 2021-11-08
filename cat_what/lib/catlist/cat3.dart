import 'package:flutter/material.dart';
import 'package:cat_what/form.dart';
import 'package:provider/provider.dart';

import 'package:cat_what/model/formmodel.dart';

class CatThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เห็ด",style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset('assets/cat3.jpg',
            ),            
            Text('\nพันธุ์ : British shorthair',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
            Text('เพศ : หญิง',
            style: TextStyle(fontSize: 20),),            
            Text('สี : สีขาว-ดำ หน้าดำ ตาสีฟ้า',
            style: TextStyle(fontSize: 20)
            ,),            
            Text('วันที่หาย : 05/09/2021',
            style: TextStyle(fontSize: 20)
            ,),            
            Text('สถานที่หาย : สีลม กทม.',
            style: TextStyle(fontSize: 20)
            ,),
          Padding(
              padding: const EdgeInsets.all(50.0),
            child: Consumer<FormModel2>(
                builder: (context, model, child) {
                  return Text('result - \n${model.nameofcat} \n${model.name} \n${model.location} \n${model.tel}');
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
          builder: (context) => FormPage(),
          ),
        );
      }, 
      icon: Icon(Icons.message_sharp,size: 30,color: Colors.white,),
      backgroundColor: Colors.deepOrange[300],
      label: Text('Found your cat!',style: TextStyle(color: Colors.white),),
    ),
   );
  }
}