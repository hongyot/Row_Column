import 'package:flutter/material.dart';

class ShowRow extends StatelessWidget {
  Widget showtext2() {
    return Text(
      'Texttype Method',
      style: TextStyle(fontSize: 25.0),
    );
  }

  Widget showicon1() {
    return Icon(Icons.ac_unit);
  }

  Widget showicon2() {
    return Icon(Icons.access_time);
  }

  @override
  Widget build(BuildContext context) {
    Widget showtext = Text('This is body 2nd');

    return Scaffold(
        appBar: AppBar(
          title: Text('App bar Row'),
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[showicon1(), showicon2(), showtext2()],
        ),
      );
  }
}
