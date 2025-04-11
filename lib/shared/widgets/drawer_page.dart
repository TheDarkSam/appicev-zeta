import 'package:app_sorteador/pages/login_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              child: Image.network(
                "https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_640.png",
              ),
            ),
            accountName: Text("Jhon Doe"),
            accountEmail: Text("example@email.com"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext bc) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            "Informações",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "O Fabuloso Gerador de Lero-lero v2.0 é capaz de gerar qualquer quantidade de texto vazio e prolixo, ideal para engrossar uma tese de mestrado, impressionar seu chefe ou preparar discursos capazes de curar a insônia da platéia. Basta informar um título pomposo qualquer (nos moldes do que está sugerido aí embaixo) e a quantidade de frases desejada. Voilá! Em dois nano-segundos você terá um texto - ou mesmo um livro inteiro - pronto para impressão. Ou, se preferir, faça copy/paste para um editor de texto para formatá-lo mais sofisticadamente. Lembre-se: aparência é tudo, conteúdo é nada.",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.info_outline),
                  Text("Informações", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Row(
              spacing: 10,
              children: [
                Icon(Icons.settings),
                Text("Configurações", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Você esta saindo"),
                      content: Text(
                        "Tem certeza que quer sair?",
                        style: TextStyle(fontSize: 20),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Não", style: TextStyle(fontSize: 20)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: Text("Sim", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                spacing: 10,
                children: [
                  Icon(Icons.exit_to_app),
                  Text("Sair", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
