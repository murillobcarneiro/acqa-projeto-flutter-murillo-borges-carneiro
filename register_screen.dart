import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        backgroundColor: Colors.deepPurple,
      ),

      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF8E2DE2),
              Color(0xFFFF0080),
            ],
          ),
        ),

        child: Center(
          child: Card(
            elevation: 12,

            shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(25),
            ),

            child: Padding(
              padding:
              const EdgeInsets.all(25),

              child: Column(
                mainAxisSize:
                MainAxisSize.min,

                children: [

                  const Icon(
                    Icons.person_add,
                    size: 80,
                    color: Colors.deepPurple,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "Cadastro",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const TextField(
                    decoration:
                    InputDecoration(
                      labelText: "Email",
                    ),
                  ),

                  const SizedBox(height: 20),

                  const TextField(
                    obscureText: true,
                    decoration:
                    InputDecoration(
                      labelText: "Senha",
                    ),
                  ),

                  const SizedBox(height: 25),

                  ElevatedButton(
                    style:
                    ElevatedButton
                        .styleFrom(
                      backgroundColor:
                      Colors
                          .pinkAccent,
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context);
                    },
                    child: const Text(
                      "Cadastrar",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}