import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/home_ui.dart';
import 'package:thai_hotline_app/views/sub_a_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_b_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_c_introduction_call_ui.dart';
import 'package:thai_hotline_app/views/sub_d_introduction_call_ui.dart'; // นำเข้า HomeUI()

class IntroductionCallUi extends StatefulWidget {
  @override
  _IntroductionCallUiState createState() => _IntroductionCallUiState();
}

class _IntroductionCallUiState extends State<IntroductionCallUi> {
  final List<Widget> pages = [
    SubAIntroductionCallUi(), // หน้า 1
    SubBIntroductionCallUi(), // หน้า 2
    SubCIntroductionCallUi(), // หน้า 3
    SubDIntroductionCallUi(), // หน้า 4
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ใส่ส่วนหัวเองแทน AppBar
          Container(
            padding: EdgeInsets.all(16),
            color:  const Color.fromARGB(247, 245, 90, 79),// สีพื้นหลัง
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("", style: TextStyle(fontSize: 18, color: Colors.black)),
              ],
            ),
          ),

          // ส่วนที่แสดงหน้าต่างๆ
          Expanded(
            child: IndexedStack(
              index: currentPage,
              children: pages,
            ),
          ),

          // แถบล่างแบบไม่ใช่ BottomAppBar
          Container(
            padding: EdgeInsets.only(
                left: 50, right: 50, bottom: 70), // ปรับระยะห่างบนและล่าง
            color:  const Color.fromARGB(247, 245, 90, 79), // สีพื้นหลังของแถบล่าง
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ปุ่ม "ข้าม" สำหรับหน้าที่ 1-2
                if (currentPage < 3)
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeUi()), // ไปที่หน้า HomeUI
                      );
                    },
                    child: Text(
                      "ข้าม",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  )
                else
                  // ไม่มีปุ่ม "ข้าม" ในหน้า D
                  SizedBox(),

                // จุด 4 จุด พร้อมระยะห่าง
                Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), // เพิ่มระยะห่างระหว่างจุด
                      child: Icon(
                        Icons.circle,
                        size: 10,
                        color: currentPage == index
                            ? const Color.fromARGB(255, 0, 0, 0)
                            : const Color.fromARGB(255, 255, 255, 255),
                      ),
                    );
                  }),
                ),

                // ปุ่ม "โทรเลย" หรือ ลูกศร
                GestureDetector(
                  onTap: () {
                    if (currentPage == 3) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeUi()), // ไปที่หน้า HomeUI
                      );
                    } else {
                      setState(() {
                        currentPage++; // ไปยังหน้าถัดไป
                      });
                    }
                  },
                  child: currentPage == 3
                      ? Text(
                          "โทรเลย",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        )
                      : Icon(
                          Icons.arrow_forward, // ลูกศร
                          color: Colors.black,
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
