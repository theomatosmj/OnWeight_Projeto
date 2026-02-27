import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_teste/tela_itensop.dart';
import 'telainicial.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    IconData icone;
    if (_obscurePassword == true) {
      icone = Icons.visibility;
    } else {
      icone = Icons.visibility_off;
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 65, 145),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onimus-logo2.png'),
                ),
              ),
            ),

            SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                width: 500,
                padding: EdgeInsets.all(60),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(color: Colors.grey, width: 2),
                ),

                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 1, 69),
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: const Color.fromARGB(255, 29, 65, 145),
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),

                        labelText: 'Usuário',
                      ),
                    ),

                    SizedBox(height: 40),

                    TextField(
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 1, 69),
                      ),
                      obscureText: _obscurePassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: const Color.fromARGB(255, 29, 65, 145),
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            icone,
                            color: const Color.fromARGB(255, 46, 46, 46),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscurePassword = !_obscurePassword;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => TelaInicial()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                minimumSize: Size(200, 45),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(color: const Color.fromARGB(255, 58, 58, 58)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
