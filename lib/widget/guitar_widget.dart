import 'package:flutter/material.dart';
import '../modelos/guitarra.dart';

class GuitarraWidget extends StatelessWidget {
  final Guitarra guitar;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;

  const GuitarraWidget(
      {Key? key,
      required this.guitar,
      required this.onTap,
      required this.onSwipe,
      required this.onLongPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails detalle) {
        onSwipe(guitar.id);
      },
      onLongPress: () {
        onLongPress(guitar.id);
      },
      onTap: () {
        onTap(guitar);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: ListTile(
          title: Text(guitar.marca),
          subtitle: Text(guitar.tipo),
          leading: Image.network(guitar.urlFoto),
          trailing: Icon(Icons.arrow_forward_rounded),
        ),
      ),
    );
  }
}
