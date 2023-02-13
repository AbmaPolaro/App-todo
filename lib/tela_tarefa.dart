
import 'package:flutter/material.dart';

class TelaDeTarefas extends StatefulWidget {
  const TelaDeTarefas({super.key});

  @override
  State<TelaDeTarefas> createState() => _TelaDeTarefasState();
}

class _TelaDeTarefasState extends State<TelaDeTarefas> {
  
  List ListaTarefas = [];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: ListaTarefas.length,
        itemBuilder: (context, index) {
          return CardNovo('${index+1} - ${ListaTarefas[index]}'); 
        }, 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
         final tarefa = await Navigator.of(context).pushNamed(
            '/formulario'
          );
          tarefa;
          setState(() {
            if(tarefa != null){ListaTarefas.add(tarefa);}
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget CardNovo(String texto) {
  return SizedBox(
    height: 50,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Text(
          texto,
          style: TextStyle(color: Colors.black, 
          fontWeight: FontWeight.w400,
          fontSize: 20),
        ),
        elevation: 0,
      ),
    ),
  );
}
