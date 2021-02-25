import 'package:flutter/material.dart';

class Convert extends StatelessWidget {
  Function hitungSuhu;
  Convert({Key key, @required this.hitungSuhu});
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      textColor: Colors.white,
      onPressed: () {
        hitungSuhu();
      },
      color: Colors.blueAccent,
      child: const Text("Konversi Suhu", style: TextStyle(fontSize: 20)),
    );
  }
}
