import 'dart:ui';

import 'package:aula02/widget/eleveted_button_custom.dart';
import 'package:aula02/widget/text_form_field_custom.dart';
import 'package:flutter/material.dart';

enum StringCharacter { feminino, masculino }

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key, required this.title});

  final String title;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool obscureText = true;
  StringCharacter? kauane = StringCharacter.feminino;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.title,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Preencha os dados para se cadastrar",
                  style: TextStyle(
                      color: Color(
                    0xffB6CED8,
                  )),
                ),
                const SizedBox(height: 30),
                TextFormFieldCustom(
                  description: 'Nome',
                  prefixIcon: const Icon(Icons.person, color: Colors.black),
                ),
                const SizedBox(height: 25),
                TextFormFieldCustom(
                  description: 'E-mail',
                  prefixIcon: const Icon(Icons.email, color: Colors.black),
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 15),
                const Text(
                  'Gênero',
                  style: TextStyle(color: Colors.blue, fontSize: 25),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile(
                          value: StringCharacter.feminino,
                          title: const Text("Feminino"),
                          groupValue: kauane,
                          onChanged: (StringCharacter? coimbra) {
                            setState(() {
                              kauane = coimbra;
                            });
                          }),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: RadioListTile(
                          title: const Text("Masculino"),
                          value: StringCharacter.masculino,
                          groupValue: kauane,
                          onChanged: (StringCharacter? coimbra) {
                            setState(() {
                              kauane = coimbra;
                            });
                          }),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 30),
                TextFormFieldCustom(
                  description: 'Telefone',
                  prefixIcon: const Icon(Icons.call, color: Colors.black),
                ),
                const SizedBox(height: 20),
                TextFormFieldCustom(
                  description: 'Data Nascimento',
                  prefixIcon:
                      const Icon(Icons.calendar_today, color: Colors.black),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: TextFormFieldCustom(
                        description: 'Cidade',
                        prefixIcon: const Icon(Icons.location_city,
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextFormFieldCustom(
                        description: 'Estado',
                        prefixIcon: const Icon(null),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(),
                const SizedBox(height: 30),
                TextFormFieldCustom(
                  obscureText: obscureText,
                  description: 'Senha',
                  prefixIcon: const Icon(Icons.key, color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormFieldCustom(
                  obscureText: obscureText,
                  description: 'Repita senha',
                  prefixIcon: const Icon(Icons.key, color: Colors.black),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 10),
                const ElevetedButtonCustom(description: "Criar conta"),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.check_circle, color: Colors.blue),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(text: 'Estou  de acordo com os '),
                          TextSpan(
                            text: 'termos e obrigações',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                      textScaleFactor: 0.8,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
