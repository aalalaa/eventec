import 'package:flutter/material.dart';

class EsqueceuSenhaView extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu a Senha'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esqueceu a Senha?',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),

            Text(
              'Digite seu endereço de e-mail abaixo para receber instruções de redefinição de senha.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),

            // Campo de texto para o email
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),

            // Botões "Enviar Instruções" e "Cancelar"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Botão para solicitar a redefinição de senha
                ElevatedButton(
                  onPressed: () {
                    // Verificar se o e-mail é válido
                    if (isValidEmail(emailController.text)) {
                      // Lógica para solicitar redefinição de senha

                      // Exibir o Snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content:
                              Text('Instruções enviadas para o seu e-mail!'),
                          duration:
                              Duration(seconds: 3), // Define a duração do Snackbar
                        ),
                      );
                    } else {
                      // Exibir AlertDialog se o e-mail não for válido
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('E-mail Inválido'),
                            content: Text('Por favor, insira um e-mail válido.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Enviar'),
                ),

                // Botão "Cancelar" para voltar à tela de login
                ElevatedButton(
                  onPressed: () {
                    // Navegar de volta à tela de login
                    Navigator.pop(context);
                  },
                  child: Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Função para validar o e-mail
  bool isValidEmail(String email) {
    // Adicione aqui a lógica para validar o e-mail conforme necessário
    return email.contains('@');
  }
}
