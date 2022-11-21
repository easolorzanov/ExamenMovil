import 'package:flutter/material.dart';

import '../modelos/backend.dart';
import '../modelos/guitarra.dart';
import '../widget/guitar_widget.dart';
import 'detalle.dart';

class Lista extends StatefulWidget {
  const Lista({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ListaEstado createState() => _ListaEstado();
}

class _ListaEstado extends State<Lista> {
  var guitars = Backend().getGuitarras();

  void deleteGuitarra(int id) {
    Backend().deleteGuitarra(id);
    setState(() {
      guitars = Backend().getGuitarras();
    });
  }

  void mostrarDetalle(Guitarra guitarra) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Detalle(guitar: guitarra);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: guitars.length,
        itemBuilder: (BuildContext context, int index) => GuitarraWidget(
            guitar: guitars[index],
            onTap: mostrarDetalle,
            onLongPress: mostrarDetalle,
            onSwipe: deleteGuitarra),
      ),
    );
  }
}
