import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  const AppInput({ Key? key, required this.labelText, required this.onChanged }) : super(key: key);

  final String labelText;
  final onChanged;

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.labelText,
        ),
      ),
    );
  }
}