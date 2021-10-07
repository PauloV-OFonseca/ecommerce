import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    Key? key,
    required this.labelText,
    required this.onChanged,
    this.obscure = false,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.inputFormatters
  }) : super(key: key);

  final String labelText;
  final onChanged;
  final bool obscure;
  final controller;
  final TextInputType keyboardType;
  final inputFormatters;

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: widget.controller,
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: widget.labelText,
        ),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscure,
      ),
    );
  }
}
