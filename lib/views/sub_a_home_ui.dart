import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {

  // ฟังก์ชันโทร
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

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
                  "การเดินทาง",
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
            'assets/icon/travel.jpeg', // ระบุเส้นทางของภาพ
            width: MediaQuery.of(context).size.width * 0.8, // กำหนดความกว้างของภาพ
            height: MediaQuery.of(context).size.height * 0.2, // กำหนดความสูงของภาพ
            fit: BoxFit.cover, // กำหนดการปรับขนาดภาพให้พอดีกับพื้นที่
          ),
          SizedBox(height: 30),

          Expanded(
            child: ListView(
              children: [
                _buildHotlineItem("กรมทางหลวงชนบท", "1197", 'assets/images/home_a1.jpg'),
                _buildHotlineItem("ตำรวจท่องเที่ยว", "1155", 'assets/images/home_a2.png'),
                _buildHotlineItem("ตำรวจทางหลวง", "1193", 'assets/images/home_a3.jpg'),
                _buildHotlineItem("เส้นทางบนทางด่วน", "1543", 'assets/images/home_a4.jpg'),
                _buildHotlineItem("ขสมก.", "1348", 'assets/images/home_a5.jpg'),
                _buildHotlineItem("บขส.", "1490", 'assets/images/home_a6.jpg'),
                _buildHotlineItem("เส้นทางบนทางด่วน.", "1543", 'assets/images/home_a7.png'),
                _buildHotlineItem("กรมทางหลวง", "1586", 'assets/images/home_a8.jpg'),
                _buildHotlineItem("การรถไฟแห่งประเทศไทย", "1690", 'assets/images/home_a9.jpg'),
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
          _makePhoneCall(number);  // โทรไปยังหมายเลขที่แสดง
        },
      ),
    );
  }
}
