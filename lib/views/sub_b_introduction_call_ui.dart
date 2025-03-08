import 'package:flutter/material.dart';

class SubBIntroductionCallUi extends StatefulWidget {
  const SubBIntroductionCallUi({super.key});

  @override
  State<SubBIntroductionCallUi> createState() => _SubBIntroductionCallUiState();
}

class _SubBIntroductionCallUiState extends State<SubBIntroductionCallUi> {
  int selectIndex = 1; // index ของสถานะ

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(247, 245, 90, 79),
      body: Padding(
        padding: EdgeInsets.only(
          left: 35.0,
          right: 35.0,
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.075,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/icon/Ambulance.jpg',
                  width: MediaQuery.of(context).size.width * 0.87,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'อุบัติเหตุ ป่วยฉุกเฉิน ไฟใหม้',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'รถหาย สัตว์ร้านเข้าบ้าน',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'ทุกอย่างเกินขึ้นได้ตลอดเวลา',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'จะดีกว่าไหม',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'เมื่อพบเจออุบัติเหตุ เหตุด่วน เหตุร้าย',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'สามารถโทรแจ้งได้ทันท่วงที',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ไม่ต้องรอ',
                      style: TextStyle(fontSize: 16),
                    ),
                    TextSpan(
                      text: 'โทรเลย!!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'สายด่วน',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'อุบัติเหตุ-เหตุฉุกเฉิน',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
