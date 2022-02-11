import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'custom_widgets/sidepanel_widget.dart';
import 'custom_widgets/mainbutton_widget.dart';
import 'tabs/quiz_app/main.dart';
import 'tabs/textpage/main.dart';
import 'tabs/to_do_app/main.dart';
import 'tabs/to_do_app/todo.dart';

void main() {
  runApp(
    MaterialApp(
// themedata
        theme: ThemeData(
          fontFamily: 'RobotoSlabs',
          primaryColor: Colors.blueGrey,
          secondaryHeaderColor: Colors.grey[300],
          splashColor: Colors.grey[100],
        ),
// route part
        initialRoute: 'Home',
        routes: {
          'Home': (context) => Home(),
          'To Do': (context) => MyAppToDo(),
          'Quiz': (context) => MyAppQuiz(),
          'Experience': (context) => TextPage(),
          // insert here all future routes
        }),
  );
}

class Home extends StatelessWidget {
  void temporary() {}
  int itemCount = 7;
  double size = 12;

  
  final List<ToDo> toDoList = [
    ToDo(
      title: 'cut grass',
      context: 'use lawn mower',
      id: DateTime.now().toString(),
      date: DateTime.now(),
      importance: 2.3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PWS Quinten Kockelkoren'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SidePanel('PWS van Quinten Kockelkoren', 0, 1),
          Column(
            children: [
              MainButton('Quiz', itemCount, size, 'Quiz'),
              MainButton('To Do', itemCount, size, 'To Do'),
              MainButton('Experience', itemCount, size, 'Experience'),
              MainButton('Wat is flutter', itemCount, size, 'Experience'),
              MainButton('Conclusie', itemCount, size, 'Experience'),
            ],
          ),
          SidePanel('PWS van Quinten Kockelkoren', math.pi, 3),
        ],
      ),
    );
  }
}
