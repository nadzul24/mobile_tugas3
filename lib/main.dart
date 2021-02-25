import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'input.dart';
import 'hasil.dart';
import 'convert.dart';

void main() {
  runApp(my());
}

class my extends StatefulWidget {
  @override
  myState createState() => myState();
}

class myState extends State<my> {
  TextEditingController inCelcius = new TextEditingController();

  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;

  void _hitungSuhu() {
    setState(() {
      _inputUser = double.parse(inCelcius.text);
      _kelvin = _inputUser + 273;
      _reamur = (4 / 5) * _inputUser;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Konverter Suhu"),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Input(inCelcius: inCelcius),
                hasil(kelvin: _kelvin, reamur: _reamur),
                Convert(hitungSuhu: _hitungSuhu),
              ]),
        ),
      ),
    );
  }
}
