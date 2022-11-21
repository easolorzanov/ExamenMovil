import 'package:flutter/material.dart';

import '../constans.dart';
import '../modelos/guitarra.dart';

class Detalle extends StatelessWidget {
  final Guitarra guitar;

  const Detalle({Key? key, required this.guitar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(guitar.modelo),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(guitar.urlFoto),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Marca : ${guitar.marca}',
                    textAlign: TextAlign.justify, style: textStyle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Tipo : ${guitar.tipo}',
                    textAlign: TextAlign.justify, style: textStyle),
              ),
              ElevatedButton(
                  onPressed: (() {
                    Navigator.pop(context);
                  }),
                  child: Text(
                    "Atrás",
                    style: textStyle,
                  ))
            ],
          ),
        ));
  }
}
