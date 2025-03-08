import 'package:flutter/material.dart';

class SubAIntroductionCallUi extends StatefulWidget {
  const SubAIntroductionCallUi({super.key});

  @override
  State<SubAIntroductionCallUi> createState() => _SubAIntroductionCallUiState();
}

class _SubAIntroductionCallUiState extends State<SubAIntroductionCallUi> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(247, 245, 90, 79),
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
                  'assets/icon/travel.jpeg',
                  width: MediaQuery.of(context).size.width * 0.87,
                ),
              ),
              SizedBox(
                height: 80.0,
              ),
              Text(
                'เมื่อต้องเดินทางทั้งในเมือง ออกต่างจังหวัด',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'จะใกล้หรือไกลเพียงใด',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'สอบถามข้อมูลการเดินทาง การจราจร',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'ทางด่วน ทางหลัก ทางรอง',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'เส้นทางเลี่ยงการจราจรติดขัด',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                'ข้อมูลรถทัวร์ รถไฟ ขสมก. BTS MRT',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'ชักช้าอยู่ไย ',
                      style: TextStyle(fontSize: 18),
                    ),
                    TextSpan(
                      text: 'โทรเลย!!!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
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
                'การเดินทาง',
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
