import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String name;
  final Function push;
  final int itemCount;
  final double size;  

  MainButton(this.name, this.push, this.itemCount, this.size);

  double buttonHeight = 40;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: ((MediaQuery.of(context).size.height -
                    itemCount * buttonHeight) /
                itemCount)),
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * (1 / 3),
          height: buttonHeight,
          child: Card(
            color: Theme.of(context).primaryColor,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor),
              onPressed: () {
                push();
              },
              child: Text(
                name,
                style: TextStyle(
                  fontSize: size,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
