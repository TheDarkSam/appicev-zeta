import 'package:app_sorteador/shared/widgets/cartao_curso.dart';
import 'package:app_sorteador/shared/widgets/drawer_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var cursos = [
    {
      "turno": "Manhã",
      "nomeCurso": "Programação de IA",
      "dia": "28",
      "mes": "Apr",
      "ano": "2024",
    },
    {
      "turno": "Tarde",
      "nomeCurso": "Programação Mobile",
      "dia": "23",
      "mes": "Mar",
      "ano": "1965",
    },
    {
      "turno": "Noite",
      "nomeCurso": "Estrutura de Dados",
      "dia": "10",
      "mes": "Dez",
      "ano": "2025",
    },
    {
      "turno": "Noite",
      "nomeCurso": "Calculo I",
      "dia": "13",
      "mes": "Feb",
      "ano": "2025",
    },
    {
      "turno": "Tarede",
      "nomeCurso": "Empreendedoriso",
      "dia": "30",
      "mes": "Jan",
      "ano": "2023",
    },
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
        drawer: DrawerPage(),
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
                dia: curso["dia"]!,
                mes: curso["mes"]!,
                ano: curso["ano"]!,
              );
            }),
          ],
        ),
      ),
    );
  }
}
