import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String name;
  final int itemCount;
  final double size;
  final String link;

  MainButton(this.name, this.itemCount, this.size, this.link);

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
                Navigator.pushNamed(context, link);
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
