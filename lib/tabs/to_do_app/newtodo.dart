import 'package:flutter/material.dart';

class NewToDo extends StatefulWidget {
  final Function addTx;

  NewToDo(this.addTx);

  @override
  _NewToDoState createState() => _NewToDoState();
}

class _NewToDoState extends State<NewToDo> {
  final textController = TextEditingController();
  final contextController = TextEditingController();
  final amountController = TextEditingController();

  void sumbitdata() {
    final enteredTitle = textController.text;
    final enteredContext = contextController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty ||
        enteredAmount < 0 ||
        enteredContext.isEmpty ||
        enteredAmount > 10) {
      return;
    }
    widget.addTx(
      enteredTitle,
      enteredContext,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'title'),
              controller: textController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'context'),
              controller: contextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'inmportance in 1/10'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => sumbitdata(),
            ),
            ElevatedButton(
              onPressed: () {
                sumbitdata();
              },
              child: Text('addTransactions'),
            ),
          ],
        ),
      ),
    );
  }
}
