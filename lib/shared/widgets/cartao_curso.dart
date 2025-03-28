import 'package:flutter/material.dart';

class CartaoCurso extends StatefulWidget {
  final String turno;
  final String nomeCurso;
  const CartaoCurso({super.key, required this.turno, required this.nomeCurso});

  @override
  State<CartaoCurso> createState() => _CartaoCursoState();
}

class _CartaoCursoState extends State<CartaoCurso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://ascenty.com/wp-content/uploads/2022/04/tecnologia-na-educa%C3%A7%C3%A3o-1920x1000-c-default.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.turno),
                  Text(
                    widget.nomeCurso,
                    style: TextStyle(fontSize: 25, color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
