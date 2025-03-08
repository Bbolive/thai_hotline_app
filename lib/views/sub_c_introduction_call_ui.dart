import 'package:flutter/material.dart';

class SubCIntroductionCallUi extends StatefulWidget {
  const SubCIntroductionCallUi({super.key});

  @override
  State<SubCIntroductionCallUi> createState() => _SubCIntroductionCallUiState();
}

class _SubCIntroductionCallUiState extends State<SubCIntroductionCallUi> {
  int selectIndex = 2; // index ของสถานะในหน้า SubC

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
                  'assets/icon/bank.jpg',
                  width: MediaQuery.of(context).size.width * 0.62,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Text(
                'เมื่อเงินคือสิ่งสำคัญสำหรับการดำเนินชีวิต ',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'กิน เที่ยว ซื้อสินค้า กิน',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'การเดินทาง การรักษาพยาบาล ',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'หรือโดนเหตุมิจฉาชีพ',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'แก๊งคอลเซ็นเตอร์หลอกลวง',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'สามารถติดต่อธนาคารโดยตรง',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ได้เลย',
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
                'ธนาคาร',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
