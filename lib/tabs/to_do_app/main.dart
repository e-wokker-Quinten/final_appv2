import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './newtodo.dart';
import './todo.dart';
import './to_do_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.amber),
      ),
      home: MyAppToDo(),
    );
  }
}

class MyAppToDo extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyAppToDo> {
  final List<ToDo> _toDoList = [
    ToDo(
      title: 'cut grass',
      context: 'use lawn mower',
      id: DateTime.now().toString(),
      date: DateTime.now(),
      importance: 2.3,
    ),
  ];

  void _addNewToDoPoint(String txTitle, String txContext, double txImportance) {
    final newTx = ToDo(
        context: txContext,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        importance: txImportance,
        title: txTitle);
    setState(() {
      _toDoList.add(newTx);
    });
    print(_toDoList);
  }

  void startAddNewToDo(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (bCtx) {
        return NewToDo(_addNewToDoPoint);
      },
    );
  }

  void _updateUI(List<ToDo> _toDoList, index) {
    setState(() {
      _toDoList.removeAt(index);
      print(_toDoList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: const Text('To do List'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        child: ToDoList(_toDoList, _updateUI),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewToDo(context),
      ),
    );
  }
}
