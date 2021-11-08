import 'package:flutter/material.dart';

class poison extends StatelessWidget {
  const poison({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวถูกสารพิษ"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวถูกสารพิษ\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    แมวอาจได้รับสารพิษทั้งจากในบ้าน ทางปากและทางผิวหนัง\n   วิธีป้องกันควรจัดเก็บบ้านให้เรียบร้อย เป็นระเบียบ และควรระวังสารเคมีรุนแรง เช่น ยาฆ่าแมลง เพราะน้องแมวอาจะเดินเหยียบ หรือเลีย\n   หากพบว่าน้องแมวหมดสติ หรือมีอาการอ่อนเพลีย มีน้ำลายไหลเป็นฟอง ควรรีบใช้ผ้าผืนใหญ่พันห่อหุ้มตัวแล้วรีบนำส่งสัตวแพทย์ให้เร็วที่สุด\n    และที่สำคัญควรนำกระป๋องหรือฉลากไปให้สัตวแพทย์ด้วย จะเป็นประโยชน์ในการรักษาอย่างมาก\n',
            style: TextStyle(fontSize: 15),),
            Image.asset('assets/images/cat7.png'),
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