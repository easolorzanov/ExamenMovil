import 'guitarra.dart';

class Backend {
  static final Backend backend = Backend._internal();

  factory Backend() {
    return backend;
  }

  Backend._internal();

  final listaGuitarra = [
    Guitarra(
        id: 1,
        marca: 'Fender',
        tipo: 'Stratocaster',
        modelo: 'Modelo 60s',
        urlFoto:
            'https://i.pinimg.com/736x/b7/3c/97/b73c97462f71fa6aeed8e0939d84cb80--stratocaster-guitar-fender-guitars.jpg'),
    Guitarra(
        id: 2,
        marca: 'Fender',
        tipo: 'Telecaster',
        modelo: 'American Performer II',
        urlFoto:
            'https://stuff.fendergarage.com/images/1/Y/z/taxonomy-electric-guitar-telecaster-american-professional-car@2x.png'),
    Guitarra(
        id: 3,
        marca: 'Gibson',
        tipo: 'Les Paul',
        modelo: 'Studio',
        urlFoto:
            'https://www.worldofmusic.com.au/wp-content/uploads/2019/05/Gibson-LP-Standard-50s-HCS.jpg'),
    Guitarra(
        id: 4,
        marca: 'PRS',
        tipo: 'Custom 24',
        modelo: 'XRT',
        urlFoto: 'https://m.media-amazon.com/images/I/71g0doPikEL.jpg'),
  ];

  List<Guitarra> getGuitarras() {
    return listaGuitarra;
  }

  void deleteGuitarra(int id) {
    listaGuitarra.removeWhere((guitarra) => guitarra.id == id);
  }
}

