import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import './newtodo.dart';
import './todo.dart';
import './to_do_list.dart';

class MyAppToDo extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyAppToDo> {
    
  

  void _addNewToDoPoint(String txTitle, String txContext, double txImportance) {
    final newTx = ToDo(
        context: txContext,
        date: DateTime.now(),
        id: DateTime.now().toString(),
        importance: txImportance,
        title: txTitle);
    setState(() {
      toDoList.add(newTx);
    });
    print(toDoList);
  }

  void startAddNewToDo(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (bCtx) {
        return NewToDo(_addNewToDoPoint);
      },
    );
  }

  void _updateUI(List<ToDo> toDoList, index) {
    setState(() {
      toDoList.removeAt(index);
      print(toDoList);
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
      body: ToDoList(toDoList, _updateUI),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewToDo(context),
      ),
    );
  }
}
