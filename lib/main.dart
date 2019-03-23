import 'package:flutter/material.dart';
import 'screens/show_row.dart'; // import screens/Show_row.dart
import 'screens/show_column.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget Showtext = Text('Main Page');

  Widget Showtext2(String name) {
    return Text(
      name,
      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
    );
  }

  Widget columnButton(BuildContext context) {
    // สร้างปุ่ม
    return RaisedButton(
      child: Text('Show Column'),
      onPressed: () {
        print('You click Show Column');
        var columnRoute = new MaterialPageRoute(
            builder: (BuildContext context) => ShowColumn());
        Navigator.of(context).push(columnRoute);
      },
    );
  }

  Widget rowButton(BuildContext context, String receive, int nummm) {
    return RaisedButton(
      child: Text('Show Row'),
      onPressed: () {
        print('You Click Show Row');
        var rowRoute =
            new MaterialPageRoute(builder: (BuildContext context) => ShowRow());
        Navigator.of(context).push(rowRoute);
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mynameismo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0), //content ห่างจาก container
        margin: EdgeInsets.only(top: 50.0),
        alignment: Alignment.topCenter,
        color: Colors.yellow,
        child: ListView(
          children: <Widget>[
            Showtext2('Please click me'),
            columnButton(context),
            rowButton(context, 'test send', 123)
          ],
        ),
      ),
    );
  }
}
