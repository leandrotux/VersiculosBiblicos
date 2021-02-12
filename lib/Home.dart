import 'package:flutter/material.dart';
import 'package:versiculosBiblicos/telas/Calendario.dart';
import 'package:versiculosBiblicos/telas/Inicio.dart';
import 'package:versiculosBiblicos/telas/Oracao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [Inicio(), Oracao(), Calendario()];
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Versículos Bíblicos",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        //padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.brown,
        items: [
          BottomNavigationBarItem(
              title: Text("Versículos"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Orações"), icon: Icon(Icons.book)),
          BottomNavigationBarItem(
              title: Text("Calendario"), icon: Icon(Icons.calendar_today)),
        ],
      ),
    );
  }
}
