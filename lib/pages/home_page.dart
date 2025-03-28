import 'package:app_sorteador/shared/widgets/cartao_curso.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cursos = [
    {"turno": "Manhã", "nomeCurso": "Programação de IA"},
    {"turno": "Tarde", "nomeCurso": "Programação Mobile"},
    {"turno": "Noite", "nomeCurso": "Estrutura de Dados"},
    {"turno": "Noite", "nomeCurso": "Calculo I"},
    {"turno": "Tarede", "nomeCurso": "Empreendedoriso"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          actions: [
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.notifications_active_outlined),
            ),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(Icons.messenger_outline_sharp),
            ),

            Padding(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://cdn-icons-png.flaticon.com/512/219/219983.png",
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: Text("Olá, Fulano 👋", style: TextStyle(fontSize: 30)),
            ),
            ...cursos.map((curso) {
              return CartaoCurso(
                turno: curso["turno"]!,
                nomeCurso: curso["nomeCurso"]!,
              );
            }),
          ],
        ),
      ),
    );
  }
}
