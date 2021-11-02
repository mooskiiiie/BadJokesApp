import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  const Answer({
    Key? key,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 25),
      child: Text(
        answer,
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
