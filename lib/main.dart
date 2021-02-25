// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(my());
}

class my extends StatefulWidget {
  @override
  myState createState() => myState();
}

class myState extends State<my> {
  double _inputUser = 0;
  double _kelvin = 0;
  double _reamur = 0;
  final inputController = TextEditingController();

  void hitungSuhu() {
    setState(() {
      _inputUser = double.parse(inputController.text);
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
              Center(
                child: TextFormField(
                    controller: inputController,
                    decoration: InputDecoration(
                        hintText: "Masukkan Suhu dalam Celcius"),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9+\.]')),
                    ],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false)),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Suhu dalam Kelvin"), Text("$_kelvin")],
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Suhu dalam Reamur"), Text("$_reamur")],
                      ),
                      margin: EdgeInsets.all(8),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                onPressed: () {
                  hitungSuhu();
                  // setState(() {
                  //   test = double.perse(suhuController.text) + 1;
                  // });
                },
                color: Colors.blueAccent,
                child:
                    const Text("Konversi Suhu", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
