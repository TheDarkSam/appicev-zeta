import 'package:app_sorteador/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

  var isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://www.somosicev.com/wp-content/uploads/2022/11/FACHADA.jpg"), fit: BoxFit.cover),
          color: Colors.indigo,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.all(40),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 3,
                      child: Image.network(
                        "https://icev.digital/pluginfile.php/1/theme_remui/loginpanellogo/0/logo-azul%20%2812%29.png",
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                alignment: Alignment.centerLeft,
                child: Text("Sign In", style: TextStyle(fontSize: 30)),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Identificação de usuario",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: senhaController,
                  obscureText: isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Senha",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child:
                          isObscure
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextButton(
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
                  ),
                  onPressed: () {
                    if (emailController.text == "admin" &&
                        senhaController.text == "123") {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Usuario ou senha incorreta")),
                      );
                    }
                  },
                  child: Text("Acessar"),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    print(senhaController.text);
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Esqueci a senha")));
                  },
                  child: Text("Perdeu a Senha?"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
