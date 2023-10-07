import 'package:eventec/view/cadastro_usuario_view.dart';
import 'package:eventec/view/esqueceu_senha_view.dart';
import 'package:eventec/view/menu_inicial_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Ícone de login
              Icon(
                Icons.school,
                size: 150.0,
                color: Colors.blue,
              ),
              // Legenda "EvenTec"
              Text(
                'EvenTec',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 50.0),

              // Campo de texto para o email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),

              // Campo de texto para a senha
              TextField(
                controller: senhaController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              SizedBox(height: 16.0),

              // Botão "Entrar"
              ElevatedButton(
                onPressed: () {
                  // Validar e-mail e senha
                  if (isValidEmail(emailController.text) &&
                      senhaController.text.isNotEmpty) {
                    // Navegar para a próxima tela
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MenuInicialView(),
                      ),
                    );
                  } else {
                    // Exibir AlertDialog se os requisitos não forem atendidos
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Erro de Autenticação'),
                          content: Text(
                            'Por favor, insira um e-mail válido e senha não vazia.',
                          ),
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
                child: Text('Entrar'),
              ),
              SizedBox(height: 16.0),

              // Links "Cadastrar" e "Esqueceu senha?"
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Link "Cadastrar"
                  TextButton(
                    onPressed: () {
                      // Navegar para a tela de cadastro
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CadastroUsuarioView(),
                        ),
                      );
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),

                  // Link "Esqueceu senha?"
                  TextButton(
                    onPressed: () {
                      // Navegar para a tela de esqueceu a senha
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EsqueceuSenhaView(),
                        ),
                      );
                    },
                    child: Text(
                      'Esqueceu senha?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 200.0),
            ],
          ),
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
