import 'package:flutter/material.dart';
import 'task_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() =>
      _CalendarScreenState();
}

class _CalendarScreenState
    extends State<CalendarScreen> {

  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendário"),
        backgroundColor: Colors.blue,
      ),

      body: Container(

        decoration:
        const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF2193b0),
              Color(0xFF6dd5ed),
            ],
          ),
        ),

        child: Center(
          child: Card(
            elevation: 12,

            shape:
            RoundedRectangleBorder(
              borderRadius:
              BorderRadius.circular(
                  25),
            ),

            child: Padding(
              padding:
              const EdgeInsets.all(
                  30),

              child: Column(
                mainAxisSize:
                MainAxisSize.min,

                children: [

                  const Icon(
                    Icons.calendar_month,
                    size: 80,
                    color: Colors.blue,
                  ),

                  const SizedBox(
                      height: 20),

                  Text(
                    '${data.day}/${data.month}/${data.year}',

                    style:
                    const TextStyle(
                      fontSize: 24,
                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                      height: 20),

                  ElevatedButton.icon(
                    icon: const Icon(
                        Icons.date_range),

                    onPressed: () async {

                      final escolhida =
                      await showDatePicker(
                        context: context,
                        firstDate:
                        DateTime(
                            2024),
                        lastDate:
                        DateTime(
                            2035),
                        initialDate:
                        data,
                      );

                      if (escolhida !=
                          null) {

                        setState(() {
                          data =
                              escolhida;
                        });
                      }
                    },

                    label: const Text(
                        'Selecionar Data'),
                  ),

                  const SizedBox(
                      height: 15),

                  ElevatedButton.icon(
                    icon: const Icon(
                        Icons.task),

                    style:
                    ElevatedButton
                        .styleFrom(
                      backgroundColor:
                      Colors
                          .pinkAccent,
                    ),

                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              TaskScreen(
                                data: data,
                              ),
                        ),
                      );
                    },

                    label: const Text(
                        'Abrir Tarefas'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}