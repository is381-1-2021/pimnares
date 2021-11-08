import 'package:flutter/material.dart';

class shock extends StatelessWidget {
  const shock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวช็อค"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวช็อคเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    หลังจากที่แมวได้รับอุบัติเหตุ ไม่ว่าจะเสียเลือดหรือถูกกระทบกระเทือนต่างๆ \n    โดยไม่มีเลือดออกก็อาจทำให้เกิดอาการช็อคขึ้นได้ \n    อาการช็อคสังเกตได้คือ การทรงตัวไม่อยู่ ปากและขาเย็น เหงือก ลิ้นและเปลือกตาด้านในซีดไม่มีเลือด ตัวเย็น\n บางตัวมีอาการหอบและกระสับกระส่าย อ่อนแรงลงปละอาจตายได้ \n   สิ่งที่ต้องปฏิบัติคือ แก้ไขหาต้นเหตุของการช็อค เช่น เสียเลือดก็ต้องห้ามเลือด ช่วยให้การไหลเวียนของเลือด เช่น ให้แมวนอนหัวต่ำกว่าลำตัว เลือดจะไปเลี้ยงได้ดีขึ้นพร้อมทั้งนวดเฟ้นส่วนปลายเท้าเบาๆ \n    พยายามรักษาความอบอุ่นของร่างกายโดยใช้ผ้าห่อตัวจากนั้นจึงนำส่งหมอ',
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