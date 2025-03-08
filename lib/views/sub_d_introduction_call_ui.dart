import 'package:flutter/material.dart';

class SubDIntroductionCallUi extends StatefulWidget {
  const SubDIntroductionCallUi({super.key});

  @override
  State<SubDIntroductionCallUi> createState() => _SubDIntroductionCallUiState();
}

class _SubDIntroductionCallUiState extends State<SubDIntroductionCallUi> {
  int selectIndex = 3; // ตั้งค่า selectIndex ให้เป็น 3 สำหรับหน้า SubD

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(247, 245, 90, 79),
      body: Padding(
        padding: EdgeInsets.only(left: 35.0, right: 35.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.075),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/icon/logoo.png',
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
              ),
              SizedBox(height: 50.0),
              Text('นํ้าไม่ไหล', style: TextStyle(fontSize: 16.0)),
              Text('ไฟฟ้าดับ', style: TextStyle(fontSize: 16.0)),
              Text('โทรไม่ติด', style: TextStyle(fontSize: 16.0)),
              Text('อินเตอร์เน็ตมีปัญหา', style: TextStyle(fontSize: 16.0)),
              Text('เข้า Social Media ไม่ได้',
                  style: TextStyle(fontSize: 16.0)),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'รอไม่ได้', style: TextStyle(fontSize: 16)),
                    TextSpan(
                      text: '   โทรเลย!!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                'สายด่วน',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'สาธารณูปโภค',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}
