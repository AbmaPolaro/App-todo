
import 'package:flutter/material.dart'; 


class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {

final TextEditingController _tarefaController = TextEditingController();
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
final List ListaTarefas = [];
String tarefa = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _tarefaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo Obrigatório!';
                  }
                  return null;
                }
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()) { 
                    tarefa = _tarefaController.text;
                     Navigator.pop(context, tarefa);
                  }
                },
                child: const Text('Salvar'),
               ),
            ],
          ),
        )
      )
    );
  }
}