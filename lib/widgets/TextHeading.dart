import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  String text;
  TextHeading(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
