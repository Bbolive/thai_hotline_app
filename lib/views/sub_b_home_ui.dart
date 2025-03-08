import 'package:flutter/material.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              children: [
                Text(
                  "สายด่วน",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "อุบัติเหตุ-เหตุฉุกเฉิน",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),

          // เพิ่มภาพที่ต้องการแสดง
          Image.asset(
            'assets/icon/Ambulance.jpg', // ระบุเส้นทางของภาพ
            width: MediaQuery.of(context).size.width * 0.8, // กำหนดความกว้างของภาพ
            height: MediaQuery.of(context).size.height * 0.2, // กำหนดความสูงของภาพ
            fit: BoxFit.cover, // กำหนดการปรับขนาดภาพให้พอดีกับพื้นที่
          ),
          SizedBox(height: 30),

          Expanded(
            child: ListView(
              children: [
                _buildHotlineItem("เหตุด่วน เหตุร้าย", "191", 'assets/images/home_b1_3.jpg'),
                _buildHotlineItem("แจ้งไฟไหม้ สัตว์เข้าบ้าน", "199", 'assets/images/home_b2.jpg'),
                _buildHotlineItem("สายด่วนรถหาย(ตำรวจแห่งชาติ)", "1192", 'assets/images/home_b1_3.jpg'),
                _buildHotlineItem("อุบัติเหตุทางน้ำ", "1196", 'assets/images/home_b4.jpg'),
                _buildHotlineItem("แจ้งคนหาย", "1300", 'assets/images/home_b5.jpg'),
                _buildHotlineItem("ศูนย์ปลอดภัยคมนาคม", "1356", 'assets/images/home_b6.jpg'),
                _buildHotlineItem("หน่วยแพทย์กู้ชีพ", "1554", 'assets/images/home_b7.jpg'),
                _buildHotlineItem("ศูนย์เอราวัณ", "1646", 'assets/images/home_b8.jpg'),
                _buildHotlineItem("เจ็บป่วยฉุกเฉิน", "1669", 'assets/images/home_b9.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHotlineItem(String title, String number, String imagePath) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Image.asset(
          imagePath, // รูปภาพจาก assets
          width: 40,
          height: 40,
          fit: BoxFit.cover, // ปรับขนาดให้พอดีกับพื้นที่
        ),
        title: Text(title, style: const TextStyle(fontSize: 16)),
        subtitle: Text(number),
        trailing: const Icon(Icons.phone, color: Colors.green),
        onTap: () {
          // เพิ่มฟังก์ชันโทรออกที่นี่
        },
      ),
    );
  }
}