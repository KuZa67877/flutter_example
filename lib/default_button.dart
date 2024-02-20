import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
  final Color buttonColor;
  final String info;
  final VoidCallback onPressedFunction;
  final bool isSettings;
  const DefaultButton(
      {super.key,
      required this.info,
      required this.buttonColor,
      required this.onPressedFunction,
      required this.isSettings});

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0), // Закругление углов
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(
                widget.isSettings ? const Size(331, 51) : const Size(217, 34)),
            backgroundColor:
                MaterialStateProperty.all<Color>(widget.buttonColor),
            textStyle:
                MaterialStateProperty.all<TextStyle?>(TextStyle(fontSize: 16))),
        onPressed: widget.onPressedFunction,
        child: Text(widget.info, style: TextStyle(fontSize: 16)));
  }
}
