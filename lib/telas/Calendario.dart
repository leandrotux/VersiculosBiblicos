import 'package:flutter/material.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Calendario com datas importantes",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
