import 'package:flutter/material.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
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
                  "สาธารณูปโภค",
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
            'assets/icon/logoo.png', // ระบุเส้นทางของภาพ
            width:
                MediaQuery.of(context).size.width * 0.6, // กำหนดความกว้างของภาพ
            height:
                MediaQuery.of(context).size.height * 0.25,// กำหนดการปรับขนาดภาพให้พอดีกับพื้นที่
          ),
          SizedBox(height: 30),

          Expanded(
            child: ListView(
              children: [
                _buildHotlineItem(
                    "ไฟฟ้านครหลวง", "1130", 'assets/images/home_d1.jpg'),
                _buildHotlineItem("ไฟฟ้าส่วนภูมิภาค", "1129",
                    'assets/images/home_d2.jpg'),
                _buildHotlineItem("ไฟฟ้าฝ่ายผลิต", "1416",
                    'assets/images/home_d3.png'),
                _buildHotlineItem(
                    "การประปานครหลวง", "1125", 'assets/images/home_d4.jpg'),
                _buildHotlineItem(
                    "การประปาส่วนภูมิภาค", "1662", 'assets/images/home_d5.jpg'),
                _buildHotlineItem(
                    "True Corporation (ทรู คอร์ปอเรชั่น)", "1242", 'assets/images/home_d6.jpg'),
                _buildHotlineItem(
                    "Dtac(ดี แทค)", "1678", 'assets/images/home_d7.jpg'),
                _buildHotlineItem(
                    "AIS (เอ ไอ เอส)", "1175", 'assets/images/home_d8.jpg'),
                _buildHotlineItem(
                    "TOT (ที โอ ที)", "1100", 'assets/images/home_d9.jpg'),
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
