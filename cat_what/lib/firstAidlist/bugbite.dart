import 'package:flutter/material.dart';

class bugbite extends StatelessWidget {
  const bugbite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("แมวถูกแมลงสัตวกัดต่อย"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('วิธีปฐมพยาบาล\nแมวถูกแมลงสัตวกัดต่อย\nเบื้องต้น\n',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
            ),
            Text('    เมื่อถูกผึ้ง ตะขาบ หรือสัตว์มีพิษกัดต่อยเอาที่ใบหน้า ขาหรือบริเวณต่าง ๆ ถ้าแมวไม่มีอาการแพ้ก็จะหายไปได้เอง \n   แต่ถ้าแพ้พิษเหล่านี้ก็จะมีอาการปรากฎให้เห็นเกิดขึ้น  คือหน้าตาบวมผิดปกติ  ตาบวมปิด  ที่บริเวณขาหรือส่วนอื่น ๆ ที่ถูกพิษบวมขึ้น  \n    อาการที่เป็นอันตรายมากจะพบว่าหายใจไม่ออก ปากปิดสนิทซึ่งทำให้ช็อคถึงตายได้ทันทีการปฐมพยาบาล  \nถ้ามีเหล็กในจากผึ้ง  ตัวต่อ  ให้พยายามดึงเหล็กในของแมลงที่ต่อยให้ออก  และประคบบริเวณที่ถูกต่อยด้วยน้ำเย็น ๆ หรือน้ำแข็งทันทีก่อนนำไปหาหมอ\n\n   หากแมวถูกงูพิษกัด การชลอพิษด้วยวิธีผูกผ้าหรือรัดเหนือแผลนั้นเป็นวิธีที่ค่อนข้างล้าสมัยและไม่ค่อยได้ผล  \n    ทางที่ดีควรให้กินยาแก้แพ้ (Anlihistamin)  ชนิดเดียวกับที่คนกินแล้วรีบนำส่งหมอทันที  \nและเพื่อประโยชน์แก่การรักษาควรบอกหมอด้วยว่าเป็นงูอะไรหรือนำซากงู้นั้นไปด้วยก็ยิ่งดี',
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