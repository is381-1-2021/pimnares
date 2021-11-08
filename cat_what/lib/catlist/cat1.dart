import 'package:flutter/material.dart';
import 'package:cat_what/form.dart';
import 'package:provider/provider.dart';
import 'package:cat_what/model/formmodel.dart';

class CatOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("บลอสซัม",style: (TextStyle(color: Colors.white))),
        backgroundColor: Colors.deepOrange[300],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Image.asset('assets/cat1.jpg', height: 300, width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: Text('\nพันธุ์ : British Shorthair',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
              ),
            ),
            Text('เพศ : หญิง',
            style: TextStyle(fontSize: 20),),
            
            Text('สี : สีส้ม-ขาว ตาสีเขียว',
            style: TextStyle(fontSize: 20)
            ,),
            Text('วันที่หาย : 02/09/2021',
            style: TextStyle(fontSize: 20)
            ,),
            Text('สถานที่หาย : อารีย์ กทม.',
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