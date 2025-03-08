import 'package:flutter/material.dart';
import 'package:thai_hotline_app/views/sub_a_home_ui.dart';
import 'package:thai_hotline_app/views/sub_b_home_ui.dart';
import 'package:thai_hotline_app/views/sub_c_home_ui.dart';
import 'package:thai_hotline_app/views/about_ui.dart';
import 'package:thai_hotline_app/views/sub_d_home_ui.dart'; // นำเข้า AboutUi

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int selectIndex = 0; // เก็บ index ของหน้าที่เลือก

  // รายการหน้าที่สามารถสลับได้
  List<Widget> itemUIShow = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // ซ่อนปุ่มลูกศรย้อนกลับ
        backgroundColor: Colors.red,
        title: const Text(
          'สายด่วน THAILAND',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUi(),
                ),
              );
            },
            icon: Icon(
              Icons.error_outline,
              color: Colors.black,
              size: MediaQuery.of(context).size.height * 0.035,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: itemUIShow[selectIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        onTap: (index) {
          setState(() {
            selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "การเดินทาง",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: "อุบัติเหตุ-เหตุฉุกเฉิน",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "ธนาคาร",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: "สาธารณูปโภค",
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}