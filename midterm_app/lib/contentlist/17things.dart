import 'package:flutter/material.dart';

class catsThings extends StatelessWidget {
  const catsThings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("17 เรื่องลับๆของน้องแมว"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '17 เรื่องลับๆของน้องแมว\n',
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              Image.asset('assets/images/cat2.jpeg'),
              Text(
                '\n1. แมวมีเซนส์อันยอดเยี่ยมเกี่ยวกับเรื่องแผ่นดินไหว',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '2. แมวสามารถกลืนและย่อยอาหารได้โดยไม่ต้องเคี้ยว',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '3. แมวเป็นนายที่แท้จริงของบ้าน',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '4. แมวก็ฝัได้เหมือนกัน',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '5. แมวไม่เข้าใจการโดนลงโทษ',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '6. การแตะจมูกเป็นการทักทายอย่างหนึ่ง',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '7. ไม่มีใครรู้ว่าเสียง pur เกิดจากอะไร',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '8. แมว pur เพื่อแสดงความพอใจ',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '9. แมวส่งเสียง pur ได้นานกว่าที่คิด',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '10. ลูกแมวครางได้โทนเสียงเดียว',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '11. แมวใช้เสียงในการสื่อสารกับเจ้าของ',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '12. ช็อกโกแลต คืออาหารต้องห้าม',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '13. ไม่ควรผูกมิตรด้วยการสบตา',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '14. เนื้อสดช่วยบำรุงฟัน',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '15. ทนต่อความร้อนได้ดี',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '16. ชีพจรเปลี่ยนแปลงตามอายุ',
                style: TextStyle(fontSize: 15),
              ),
              Text(
                '17. แมวก็มีเหงื่อเหมือนกัน',
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
