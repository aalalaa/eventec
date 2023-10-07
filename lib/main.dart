// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:eventec/view/config_view.dart';
import 'package:eventec/view/eventos_view.dart';
import 'package:eventec/view/inserir_evento_view.dart';
import 'package:eventec/view/menu_inicial_view.dart';
import 'package:eventec/view/sobre_view.dart';
import 'view/cadastro_usuario_view.dart';
import 'view/esqueceu_senha_view.dart';
import 'view/login_view.dart';

void main() {
  //iniciar a execução do App
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => LoginView(),
          'cadastro': (context) => CadastroUsuarioView(),
          'esqueceu': (context) => EsqueceuSenhaView(),
          'eventos' :(context) => EventosView(),
          'menu':(context) => MenuInicialView(),
          'config':(context) => ConfigView(),
          'inserir evento':(context) => InserirEventoView(),
          'sobre':(context) => SobreView(),
        },
      ),
    ),
  );
}
