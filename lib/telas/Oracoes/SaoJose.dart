import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SaoJose extends StatefulWidget {
  @override
  _SaoJoseState createState() => _SaoJoseState();
}

class _SaoJoseState extends State<SaoJose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.all(10),
        margin: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(children: [
          Text(
            "PAI NOSSO",
            style: TextStyle(
              fontSize: 18,
              color: Colors.brown[700],
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Pai Nosso que estais nos Céus," +
                "santificado seja o vosso Nome, " +
                "venha a nós o vosso Reino, " +
                "seja feita a vossa vontade " +
                "assim na terra como no Céu. " +
                "O pão nosso de cada dia nos dai hoje, " +
                "perdoai-nos as nossas ofensas " +
                "assim como nós perdoamos " +
                "a quem nos tem ofendido, " +
                "e não nos deixeis cair em tentação, " +
                "mas livrai-nos do Mal.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.brown[400],
            ),
          ),
        ]),
      ),
    );
  }
}
