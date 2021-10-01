import 'package:flutter/material.dart';

class bone extends StatelessWidget {
  const bone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวกระดูกหัก"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'วิธีปฐมพยาบาล\nแมวกระดูกหัก\nเบื้องต้น\n',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Text(
                '   กรณีที่แมวที่ตกจากที่สูง หรือถูกรถชนอย่างแรง หากไม่เสียชีวิต จะทำให้กระดูกหัก กระดูกเลื่อน ซึ่งมักเกิดขึ้นกับส่วนของขา \n   วิธีการปฐมพยาบาลที่ถูกต้องคือเข้าเฝือก สามารถทำได้โดยใช้วัสดุพื้นบ้านข้างตัว เช่น กระดาษหนังสือพิมพ์นำมาม้วนเป็นท่อนจนแข็งพอประมาณมาดามกับขาส่วนที่หัก  \nแล้วใช้ผ้าเทปพันรัดไว้ไม่ให้หลุดหรือขยับได้  นอกจากนี้ยังอาจใช้ไม้เล็ก ๆ หรือท่อพลาสติแทนก็ได้  \n   หลักการเข้าเฝือกก็เพื่อไม่ให้เกิดการขยับเขยื้อนของกระดูกส่วนที่หัก และต้องไม่บีบรัดเส้นเลือดไหลกลับไม่ได้ \nเพื่อป้องกันการขยับของเฝือกควรพันเฝือกให้พ้นข้อที่อยู่เหนือและใต้ตำแหน่งที่หัก  \nหลังจากเข้าเฝือกชั่วคราวแล้วจึงรีบนำส่งหมอ',
                style: TextStyle(fontSize: 15),
              ),
              Text('\nค้นหาโรงพยาบาลสัตว์ใกล้คุณ',
            style: TextStyle(fontSize: 15)
            ,),
            Text('(coming soon...)',
            style: TextStyle(fontSize: 15)
            ,),
            Icon(Icons.gps_fixed, size: 50, color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}
