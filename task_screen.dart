import 'package:flutter/material.dart';
import 'task.dart';

class TaskScreen extends StatefulWidget {
  final DateTime data;

  const TaskScreen({
    super.key,
    required this.data,
  });

  @override
  State<TaskScreen> createState() =>
      _TaskScreenState();
}

class _TaskScreenState
    extends State<TaskScreen> {

  final List<Task> tarefas = [];

  void ordenar() {

    tarefas.sort((a, b) {

      if (a.concluida != b.concluida) {
        return a.concluida ? 1 : -1;
      }

      return a.titulo
          .toLowerCase()
          .compareTo(
        b.titulo.toLowerCase(),
      );
    });
  }

  void adicionarTarefa() {

    final controller =
    TextEditingController();

    showDialog(
      context: context,
      builder: (_) {

        return AlertDialog(

          title: const Text(
            "Nova Tarefa",
          ),

          content: TextField(
            controller: controller,
            decoration:
            const InputDecoration(
              hintText:
              "Digite a tarefa",
            ),
          ),

          actions: [

            ElevatedButton(
              style:
              ElevatedButton
                  .styleFrom(
                backgroundColor:
                Colors.pinkAccent,
              ),

              onPressed: () {

                if (controller
                    .text
                    .trim()
                    .isNotEmpty) {

                  setState(() {

                    tarefas.add(
                      Task(
                        titulo: controller
                            .text
                            .trim(),
                      ),
                    );

                    ordenar();
                  });
                }

                Navigator.pop(
                    context);
              },

              child:
              const Text(
                "Salvar",
              ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(
          "${widget.data.day}/${widget.data.month}/${widget.data.year}",
        ),
        backgroundColor:
        Colors.deepPurple,
      ),

      floatingActionButton:
      FloatingActionButton(
        backgroundColor:
        Colors.pinkAccent,

        onPressed:
        adicionarTarefa,

        child:
        const Icon(Icons.add),
      ),

      body: ListView.builder(

        itemCount:
        tarefas.length,

        itemBuilder:
            (context, index) {

          final tarefa =
          tarefas[index];

          final cor =
          tarefa.concluida
              ? Colors
              .green
              .shade100
              : Colors
              .amber
              .shade100;

          return Card(

            color: cor,

            elevation: 5,

            margin:
            const EdgeInsets.all(
                8),

            child:
            CheckboxListTile(

              title: Text(
                tarefa.titulo,

                style: TextStyle(
                  fontSize: 18,
                  fontWeight:
                  FontWeight.bold,

                  color:
                  Colors.black,

                  decoration:
                  tarefa.concluida
                      ? TextDecoration
                      .lineThrough
                      : TextDecoration
                      .none,

                  decorationColor:
                  Colors.black,

                  decorationThickness:
                  3,
                ),
              ),

              value:
              tarefa.concluida,

              activeColor:
              Colors
                  .deepPurple,

              onChanged: (v) {

                setState(() {

                  tarefa.concluida =
                  v!;

                  ordenar();
                });
              },

              secondary:
              IconButton(

                icon:
                const Icon(
                  Icons.delete,
                  color:
                  Colors.red,
                ),

                onPressed: () {

                  setState(() {

                    tarefas.removeAt(
                        index);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}