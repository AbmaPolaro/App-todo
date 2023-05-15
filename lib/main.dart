import 'package:app_todo/formulario.dart';
import 'package:flutter/material.dart';
import 'package:app_todo/tela_tarefa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const TelaDeTarefas(),
        '/formulario': (context) => const Formulario(),
      },
    );
  }
}
