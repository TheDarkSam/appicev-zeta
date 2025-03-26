
  import 'package:flutter/material.dart';

String sorteador (List<String> lista){
      String nomeSorteado = (lista..shuffle()).first;
      return nomeSorteado;
  }

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}