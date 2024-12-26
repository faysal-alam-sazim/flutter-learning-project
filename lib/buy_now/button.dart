import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;

  const Button(
      {super.key,
      required this.text,
      this.color = Colors.green,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            minimumSize: Size(double.maxFinite, 50)),
        child: Text(text,
            style: TextStyle(
                fontSize: 20, color: textColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
