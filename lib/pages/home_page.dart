import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
String nomeSorteado = "";
List<String> nomes = ["Josefina", "Alice", "João", "Bruna"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("App de Sorteio"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Text("A", style: TextStyle(fontSize: 40),)),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blueAccent,
                    child: Text("Bruno", style: TextStyle(fontSize: 40),)),
                ),
                Expanded(
                  child: Container(
                    color: Colors.green,
                    child: Text("C", style: TextStyle(fontSize: 40),)),
                )
              ],
            ),
            Expanded(
              child: Container(
                width: 100,
                color: Colors.red,
                child:Image.network("https://icev.digital/pluginfile.php/1/theme_remui/loginpanellogo/0/logo-azul%20%2812%29.png"))
                ),
              Expanded(
                child: Container(
                color: Colors.purpleAccent,
                child: Text("Eduardo", style: TextStyle(fontSize: 40),)
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                color: Colors.tealAccent,
                child: Center(child: Text("Felipe", style: TextStyle(fontSize: 40),))
                ),
              )
          ],

        ),
      ),
    );
  }
}