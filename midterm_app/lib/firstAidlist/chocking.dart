import 'package:flutter/material.dart';

class choke extends StatelessWidget {
  const choke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สิ่งของติดตอ"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวมีสิ่งของติดคอ\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    แมวที่มีนิสัยอยากรู้อยากเห็น โดยเฉพาะลูกแมวอาจเป็นเหยื่อของภาวะขาดอากาศหายใจ \n   เนื่องจากมีกระดูก เชือก หรือสิ่งของอื่นๆติดคอ\n    อาการที่พบคือ เค้าจะเอาเท้าเขี่ยปาก ปากอ้า น้ำลายไหล หรืออาจพบเค้านอนหมดสติหากมีการขัดขวางทางเดินอากาศอย่างสมบูรณ์\n   หากเป็นไปได้จะต้องมีผู้ช่วยจับเค้านอนตะแคงข้าง กดที่อกของเค้าด้วยมือทั้งสองข้าง\n   และอย่าพยายามนำสิ่งแปลกปลอมออกเอง เพราะอาจะเป็นแผลครูดกับหลอดอาหารและลำไส้ ควรรีบนำส่งสัตวแพทย์ใกล้บ้านโดยด่วน',
            style: TextStyle(fontSize: 15),),
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