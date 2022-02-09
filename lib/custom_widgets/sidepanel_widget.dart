import 'package:flutter/material.dart';

class sidepanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).secondaryHeaderColor),
      width: MediaQuery.of(context).size.width * (1 / 3),
      height: double.infinity,
      child: Card(
        color: Theme.of(context).secondaryHeaderColor,
      ),
    );
  }
}
