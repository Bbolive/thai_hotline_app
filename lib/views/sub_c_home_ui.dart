import 'package:flutter/material.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
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
                  "ธนาคาร",
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
            'assets/icon/bank.jpg', // ระบุเส้นทางของภาพ
            width: MediaQuery.of(context).size.width * 0.55, // กำหนดความกว้างของภาพ
            height: MediaQuery.of(context).size.height * 0.2, // กำหนดความสูงของภาพ
            fit: BoxFit.cover, // กำหนดการปรับขนาดภาพให้พอดีกับพื้นที่
          ),
          SizedBox(height: 30),

          Expanded(
            child: ListView(
              children: [
                _buildHotlineItem("ธนาคารกรุงเทพ", "133", 'assets/images/home_c1.jpg'),
                _buildHotlineItem("ธนาคารออมสิน", "1115", 'assets/images/home_c2.jpg'),
                _buildHotlineItem("ธนาคารกสิกรไทย", "02 888 8888", 'assets/images/home_c3.jpg'),
                _buildHotlineItem("ธนาคารกรุงไทย", "02 111 1111", 'assets/images/home_c4.jpg'),
                _buildHotlineItem("ธนาคารกรุงศรี", "1572", 'assets/images/home_c5.jpg'),
                _buildHotlineItem("ธนาคารทีเอ็มบีธนขาต(ttb)", "1428", 'assets/images/home_c6.jpg'),
                _buildHotlineItem("ธนาคารซีตี้แบงค์(Citybank)", "1588", 'assets/images/home_c7.jpg'),
                _buildHotlineItem("ธนาคารแลนด์ แอนด์ เฮ้าส์ (LH Bank)", "1327", 'assets/images/home_c8.jpg'),
                _buildHotlineItem("ธนาคารอาคารสงเคราะห์(ธอส.)", "02 645 9000", 'assets/images/home_c0.jpg'),
                _buildHotlineItem("ธนาคารไทยพาณิชน์", "02 777 7777", 'assets/images/home_c10.jpg'),
                _buildHotlineItem("ธนาคารเกียรตินาคินภัทร", "02 165 5555", 'assets/images/home_c11.jpg'),
                _buildHotlineItem("ธนาคารไทยเครดิต", "02 697 5454", 'assets/images/home_c12.jpg'),
                _buildHotlineItem("ธนาคารยูโอบี (UOB)", "02 285 1555", 'assets/images/home_c13.jpg'),
                _buildHotlineItem("ธนาคารทิสโก้ (Tisco)", "02 633 6000", 'assets/images/home_c14.jpg'),
                _buildHotlineItem("ธนาคารอิสลาม", "02 204 2766", 'assets/images/home_c15.jpg'),
                _buildHotlineItem("ธนาคารซีไอเอ็มบีไทย(CIMB THAI)", "02 626 7777", 'assets/images/home_c16.jpg'),
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