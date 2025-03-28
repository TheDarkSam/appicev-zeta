import 'package:flutter/material.dart';

class CartaoCurso extends StatefulWidget {
  final String turno;
  final String nomeCurso;
  final String dia;
  final String mes;
  final String ano;
  const CartaoCurso({
    super.key,
    required this.turno,
    required this.nomeCurso,
    required this.dia,
    required this.mes,
    required this.ano,
  });

  @override
  State<CartaoCurso> createState() => _CartaoCursoState();
}

class _CartaoCursoState extends State<CartaoCurso> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(5, 5)),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: NetworkImage(
                    "https://ascenty.com/wp-content/uploads/2022/04/tecnologia-na-educa%C3%A7%C3%A3o-1920x1000-c-default.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 120),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 3, 69),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            widget.dia,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            widget.mes,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            widget.ano,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 9, child: Container()),
                ],
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
