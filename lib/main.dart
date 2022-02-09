import 'package:flutter/material.dart';

import 'custom_widgets/sidepanel_widget.dart';
import 'custom_widgets/mainbutton_widget.dart';

void main() {
  runApp(
    MaterialApp(
// themedata
        theme: ThemeData(
          fontFamily: 'RobotoSlabs',
          primaryColor: Colors.blueGrey,
          secondaryHeaderColor: Colors.grey,
          splashColor: Colors.grey[200],
        ),
// route part
        initialRoute: 'home',
        routes: {
          'home': (context) => Home(),
          // insert here all future routes
        }),
  );
}

class Home extends StatelessWidget {
  void tempory() {}
  int itemCount = 7;
  double size = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PWS Quinten Kockelkoren',
            style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          sidepanel(),
          Column(
            children: [
              MainButton('quiz', tempory, itemCount, size),
              MainButton('to do', tempory, itemCount, size),
              MainButton('experience', tempory, itemCount, size),
              MainButton('wat is flutter', tempory, itemCount, size),
              MainButton('conclusie', tempory, itemCount, size),
            ],
          ),
          sidepanel(),
        ],
      ),
    );
  }
}
