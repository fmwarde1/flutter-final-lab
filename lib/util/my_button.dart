import 'package:flutter/material.dart';

//created a button for the dialog box
class Mybutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const Mybutton({super.key, required this.text, required this.onPressed});

//designing the button
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Text(
        text,
        style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
      ),
    );
  }
}