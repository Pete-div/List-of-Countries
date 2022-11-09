import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Widget icon;
  const Button({required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: 
                  icon,
                 
              
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'FontsFree-Net-sddd4 (0.5)',
                    color: Color.fromARGB(255, 0, 0, 0),fontSize: 12,fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          width: 1,
          color: Color.fromARGB(255, 183, 196, 221),
        ),
      ),
    );
  }
}
