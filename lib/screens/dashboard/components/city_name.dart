import 'package:flutter/material.dart';

class NameCity extends StatelessWidget {
  const NameCity({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(28, 25, 23, 1),
      ),
    );
  }
}
