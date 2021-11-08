import 'package:flutter/material.dart';

class healty extends StatelessWidget {
  const healty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("4 พฤติกรรมที่บอกว่าน้องแมวสุขภาพดี"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4 พฤติกรรมที่บอกว่าน้องแมวสุขภาพดี\n',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Text(
                '1. ขับถ่ายเป็นก้อน',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '2. ทานอาหารง่าย แลไม่เบื่ออาหาร',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '3. กินอิ่ม นอนหลับ',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '4. ขี้เล่น ร่าเริง',
                style: TextStyle(fontSize: 15),
              ),
              Image.asset('assets/images/cat3.jpeg'),
            ],
          ),
        ),
      ),
    );
  }
}
