import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

import 'todo.dart';

class ToDoList extends StatelessWidget {
  final List<ToDo> ToDos;
  final Function removeAt;

  ToDoList(this.ToDos, this.removeAt);

  void Remove(index) {
    ToDos.removeAt(index);
  }

  void fucnties() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      child: ToDos.isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text('Nothing to do... Lets goooo'),
                Image.asset('lib/tabs/to_do_app/assets/images/waiting.gif')
              ],
            )
          : ListView.builder(
              itemCount: ToDos.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        child: Icon(Icons.check),
                        onPressed: (() {
                          removeAt(ToDos, index);
                        }),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            child: Text(
                              ToDos[index].title,
                            ),
                          ),
                          Container(
                            child: Text(
                              ToDos[index].context,
                            ),
                          ),
                          Text(DateFormat('yyyy-MM-dd hh:mm').format(DateTime.now()).toString()),
                        ],
                      ),
                      Container(
                          child: Text(ToDos[index].importance.toString())),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
