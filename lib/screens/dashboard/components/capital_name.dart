import 'package:flutter/material.dart';

class Capital extends StatelessWidget {
  const Capital({
    Key? key,
    required this.text1,
  }) : super(key: key);

  final String text1;

  @override
  Widget build(BuildContext context) {
    return Text(
      text1,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(102, 112, 133, 1),
      ),
    );
  }
}
