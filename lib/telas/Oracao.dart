import 'package:flutter/material.dart';
import 'package:versiculosBiblicos/telas/Oracoes/SaoJose.dart';

class Oracao extends StatefulWidget {
  @override
  _OracaoState createState() => _OracaoState();
}

class _OracaoState extends State<Oracao> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SaoJose(),
        /*child: Text(
          "Em breve orações aqui",
          style: TextStyle(fontSize: 25),
        ),*/
      ),
    );
  }
}
