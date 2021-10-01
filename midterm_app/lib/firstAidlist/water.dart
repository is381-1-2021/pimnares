import 'package:flutter/material.dart';

class water extends StatelessWidget {
  const water({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวตกน้ำ"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวตกน้ำเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    หลังจากช่วยแมวขึ้นมาจากน้ำแล้ว ทำให้น้ำออกจากปอดโดยวิธีจังขาหลังทั้งสองข้างยกไว้ให้ศรีษะห้อยลง น้ำจะไหลออกมาจากปาก \n   หากทำได้ก็ควรให้คนอื่นช่วยจับลิ้นมาดึงไว้ทางข้าง ๆ ปากให้แมวนอนหงายลงบนพื้นระหว่างเข่าทั้งสองลงบนอกแมว\nค่อย ๆ กดมืออย่างช้า ๆ เบา ๆ ค่อย ๆ ยกมือขึ้นทำเช่นนี้ไปเรื่อย ๆ \nในเวลา 1 นาทีประมาณว่าทำได้ 30 ครั้ง  \n   ระวังอย่ากดแรงเพราะกระดูกซี่ดครงแมวเปราะอาจทำให้โลหิตไหลออกจากปอดได้  \nเมื่อแมวหายใจได้เป็นปกติแล้วใช้ผ้าห่มห่อหุ้มแมวให้อบอุ่นนอนนิ่ง ๆ เงียบ ๆ 2 ถึง 3 ชั่วโมง',
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