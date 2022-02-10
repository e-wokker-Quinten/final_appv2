import 'dart:core';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
              children: <Widget>[
                Text(
                  'Nothing to do... Lets goooo',
                  textAlign: TextAlign.center,
                ),
                Image.asset('lib\tabs\to_do_app\assets\images\waiting.png')
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
                          Text(DateTime.now().toString()),
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
