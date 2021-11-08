import 'package:flutter/material.dart';

class seizures extends StatelessWidget {
  const seizures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Text("แมวมีอาการชัก"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวมีอาการชักเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('   อาการชักมักจะเกิดขึ้นอย่างเฉียบพลัน มีการสั่นกระตุก ซึ่งเกิดจากการทำงานที่ผิดปกติของสมอง \n   โดยที่สัตว์ไม่รู้สึกตัวจะมีปัสสาวะ และอุจจาระออกมา เราควรระวังการบาดเจ็บจากการชักโดยอาจเกิดการกระแทกขึ้นได้ \n   ระวังการตกจากที่สูง และให้อยู่ห่างจากน้ำ เพื่อป้องกันน้ำท่วมจมูก หรือจมน้ำ และควรแยกสัตว์ตัวอื่นออกจากบริเวณ \n    ระมัดระวังอย่าเอามือเข้าใกล้ปากของสัตว์เลี้ยง เพราะอาจเสี่ยงต่อการโดนกัด \n   เราควรที่จะจดระยะเวลาการชัก ความถี่ เวลาเริ่มและสิ้นสุด ซึ่งถ้าการชักนานเกิน 5 นาที ควรเช็ดตัวด้วยน้ำเย็น หรือผ้าเปียก \n   และรีบนำส่งสัตวแพทย์ ถ้าเค้าหมดสติ และหยุดหายใจ อาจช่วยนวดหัวใจ ดึงลิ้นออกมาข้างปากเพื่อไม่ให้ปิด หลอดลม ขณะส่งโรงพยาบาล',
            style: TextStyle(fontSize: 15),),
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