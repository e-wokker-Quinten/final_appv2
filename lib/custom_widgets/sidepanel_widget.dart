import 'package:flutter/material.dart';
import 'dart:math' as math;

class SidePanel extends StatelessWidget {
  final String textOnWall;
  final int rotate;
  final double quarter;

  SidePanel(this.textOnWall, this.quarter, this.rotate);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * (1 / 3),
      height: double.infinity,
      child: Card(
        color: Theme.of(context).secondaryHeaderColor,
        child: RotatedBox(
          quarterTurns: rotate,
          child: Center(
            child: Transform(
              transform: Matrix4.rotationY(quarter),
              alignment: Alignment.center,
              child: Text(
                textOnWall,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
