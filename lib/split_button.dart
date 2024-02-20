import 'package:flutter/material.dart';
import 'package:animated_button_bar/animated_button_bar.dart';
import 'package:for_work/colors.dart';

class SplitButton extends StatefulWidget {
  @override
  _SplitButtonState createState() => _SplitButtonState();
}

class _SplitButtonState extends State<SplitButton> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedButtonBar(
      backgroundColor: AppColors.gray1,
      foregroundColor: AppColors.green,
      radius: 8.0,
      padding: const EdgeInsets.all(16.0),
      invertedSelection: true,
      children: [
        ButtonBarEntry(
            onTap: () => print('First item tapped'), child: Text('Пассажир')),
        ButtonBarEntry(
            onTap: () => print('Second item tapped'), child: Text('Водитель')),
      ],
    );
  }
}
