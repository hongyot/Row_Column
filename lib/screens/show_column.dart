import 'package:flutter/material.dart';

class ShowColumn extends StatelessWidget {
  //Class

  Widget showstudent1() {
    //Method
    return Image.asset('images/student1.png');
  }

  Widget showstudent2() {
    return Image.asset('images/student2.png');
  }

  Widget showstudent3() {
    return Image.asset('images/student3.png');
  }

  Widget backButton(BuildContext context) {
    // ทำปุ่ม back
    return RaisedButton(
      child: Text('Back'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar Column'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            showstudent1(),
            showstudent2(),
            showstudent3(),
            backButton(context)
          ],
        ),
      ),
    );
  }
}
