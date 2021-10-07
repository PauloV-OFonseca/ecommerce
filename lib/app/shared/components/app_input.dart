import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    Key? key,
    required this.labelText,
    required this.onChanged,
    this.controller,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  final String labelText;
  final onChanged;
  final controller;
  final TextInputType keyboardType;

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.labelText,
        ),
        keyboardType: widget.keyboardType,
      ),
    );
  }
}
