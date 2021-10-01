import 'package:flutter/material.dart';

class bitten extends StatelessWidget {
  const bitten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวถูกกัด"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวถูกกัดเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    บาดแผลที่ผิวหนังของแมว มักไม่ค่อยมีเลือดออกมากเหมือนสุนัข ยกเว้นจะมีความเสียหายของหลอดเลือดใหญ่ \n     สิ่งสำคัญคือไม่ควรสัมผัสกับบาดแผลมากเกินไปเพราะจะยิ่งทำให้บาดแผลเกิดความเสียหายมากขึ้น \n     เพียงแค่ช่วยห้ามเลือด โดยการใช้ผ้าสะอาดกดทับปิดบาดแผลและพันไว้ แล้วรีบพาไปพบสัตวแพทย์ให้เร็วที่สุด\n',
            style: TextStyle(fontSize: 15)
            ,),
            Image.asset('assets/images/cat6.jpeg'),
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