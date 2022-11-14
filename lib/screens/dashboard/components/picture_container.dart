import 'package:flutter/material.dart';

class PictContainer extends StatelessWidget {
  const PictContainer({
    Key? key,
    required this.png,
  }) : super(key: key);

  final String png;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(image: NetworkImage(png), fit: BoxFit.cover)),
    );
  }
}
