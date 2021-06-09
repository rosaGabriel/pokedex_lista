import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  final Color color;
  final String text;

  Pill(this.color, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: this.color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        this.text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 3,
      ),
    );
  }
}
