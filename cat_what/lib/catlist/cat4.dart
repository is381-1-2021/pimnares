import 'package:flutter/material.dart';
import 'package:cat_what/form.dart';
import 'package:provider/provider.dart';

import 'package:cat_what/model/formmodel.dart';

class CatFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("โมจิ",style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Image.asset('assets/cat4.jpg'),
            Text('\nพันธุ์ : ขาวมณี',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
            Text('เพศ : หญิง',
            style: TextStyle(fontSize: 20),),
            
            Text('สี : สีขาวล้วน ตาสีฟ้า',
            style: TextStyle(fontSize: 20)
            ,),
            Text('วันที่หาย : 10/09/2021',
            style: TextStyle(fontSize: 20)
            ,),
            Text('สถานที่หาย : คลองหนึ่ง ปทุมธานี',
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