import 'package:flutter/material.dart';

class blood extends StatelessWidget {
  const blood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ห้ามเลือดแมว"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีห้ามเลือดแมวเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    เลือดออกมีสาเหตุร้อยแปดพันประการ  แต่เท่าที่จำเป็นต้องรู้คือดูจากบาดแผล เช่น ถูกสังกะสีบาดเท้า ถูกกัด ฯลฯ \nเมื่อผู้เลี้ยงพบอาการเลือดไหลออกมาภายนอกด้วยสาเหตุอันใดก็ตามสิ่งที่ต้องทำก็คือ \nห้ามเลือดและป้องกันเชื้อโรคเข้าแผลทันทีการห้ามเลือดทำได้ตั้งแต่วิธีกดบริเวณที่เลือดไหลออกมาด้วยผ้ากอซหรือผ้าสะอาดสักพักหนึ่งเลือดก็จะหยุดไหล\nถ้าไม่ได้เป็นผลมาจากเส้นเลือดใหญ่ฉีกขาด  \n\n   ในกรณีที่แผลกว้างโดยเฉพาะส่วนที่เป็น  ขา  เท้า  ต้องใช้วิธีขันชะเนาะ โดยใช้เชือกหรือเศษผ้ารัดเหนือบาดแผลแล้วควั่นให้ตึงก็จะสามารถห้ามเลือดได้  \nแต่ต้องคลายชะเนาะออกเป็นระยะเพื่อให้เลือดบางส่วนไปเลี้ยงส่วนปลายเท้าได้ส่วนลำตัวหรือช่วงอกและช่วงท้อง  \n   หากมีบาดแผลเลือดออกมีทางเดียวคือการใช้ผ้ากอซกดปากแผลแล้วพันรัดให้แน่นรีบนำส่งหมอโดยด่วน  \nเพราะการที่มีเลือดออกมาจากส่วนเหล่านี้มาก ๆ ได้ต้องมีสาเหตุมาจากการฉีกขาดของอวัยวะภายในรุนแรง',
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