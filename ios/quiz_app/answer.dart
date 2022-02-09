import 'package:flutter/material.dart';

import './main.dart';

void tok() {}

class Answer extends StatelessWidget {
  final void Function() selectHandler;
  final String textAnswer;

  Answer(this.selectHandler, this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey, onPrimary: Colors.white),
          child: Text(textAnswer),
          onPressed: selectHandler,
        ));
  }
}
