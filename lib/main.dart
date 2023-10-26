import 'package:eventec/view/eventos_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:eventec/view/config_view.dart';
import 'package:eventec/view/inserir_evento_view.dart';
import 'package:eventec/view/menu_inicial_view.dart';
import 'package:eventec/view/sobre_view.dart';
import 'view/cadastro_usuario_view.dart';
import 'view/esqueceu_senha_view.dart';
import 'view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginView(),
        'cadastro': (context) => CadastroUsuarioView(),
        'esqueceu': (context) => EsqueceuSenhaView(),
        'eventos': (context) => EventosView(),
        'menu': (context) => MenuInicialView(),
        'config': (context) => ConfigView(),
        'inserir evento': (context) => InserirEventoView(),
        'sobre': (context) => SobreView(),
      },
    );
  }
}

