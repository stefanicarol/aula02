import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aula02',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Smiliguido'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    print("BUILD ENTREI");
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "Bem-vindo",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Faça login para continuar",
              ),
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.account_circle,
                size: 100.50,
                color: Colors.blue,
              ),
              const SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: "Usuário",
                    labelText: ("E-mail")),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                obscureText: obscureText,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.key, color: Colors.blue),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                          print(obscureText);
                          /*  if (obscureText == true) {
                            print(obscureText);
                            obscureText = false;
                          } else {
                            print(obscureText);
                            obscureText = true;
                          }*/
                        });
                      },
                      icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
                          color: Colors.blue),
                    ),
                    hintText: "Senha",
                    labelText: ("Senha")),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Esqueceu a senha?",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 90, vertical: 20),
                    child: Text(
                      "Login".toUpperCase(),
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 36),
                  children: <TextSpan>[
                    TextSpan(text: 'Ainda não tem conta ?'),
                    TextSpan(
                      text: 'Clique aqui\n ',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    TextSpan(
                      text: 'para criar conta ',
                      style: TextStyle(color: Colors.blueAccent),
                    )
                  ],
                ),
                textScaleFactor: 0.5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
