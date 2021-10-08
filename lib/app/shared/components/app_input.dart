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
    this.inputFormatters,
    this.height = 56,
    this.width = double.maxFinite,
    this.horizontalMargin = 20,
  }) : super(key: key);

  final String labelText;
  final onChanged;
  final bool obscure;
  final controller;
  final TextInputType keyboardType;
  final inputFormatters;
  final double height;
  final double width;
  final double horizontalMargin;

  @override
  _AppInputState createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      margin: EdgeInsets.symmetric(horizontal: widget.horizontalMargin),
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
