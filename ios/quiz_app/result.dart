import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int resultScore;

  Results(this.resultScore);

  String get resultPhrase {
    var resultText = 'you did it!';
    if (resultScore <= 8) {
      resultText = 'Cheers!';
    } else if (resultScore <= 12) {
      resultText = 'ahh okay i guess!';
    } else if (resultScore <= 16) {
      resultText = 'ur weird';
    } else {
      resultText = 'wtf gtf out';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black, title: Text('Final', style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.black,
        body: resultScore < 16
          ?Center(
            child: Text(resultPhrase, textAlign: TextAlign.center, style: TextStyle(color: Colors.lightGreenAccent, fontSize:50)),
          )
          :Column(
            children: const [
              Center(
                child: Icon(Icons.accessible_forward_sharp, color: Colors.red, size: 200 ),
              ),
              Center(
                child: Text('Please make way', textAlign: TextAlign.center, style: TextStyle(color: Colors.red, fontSize: 50),),
              ),
            ],
          )
      ));
  }
}
