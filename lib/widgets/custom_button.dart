import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LoafButton extends StatelessWidget {
  const LoafButton({
    Key? key,
    this.controller, required this.text, this.icon, this.color, this.textColor,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final Color? color;
  final Color? textColor;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color == null? primary : color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text, style: TextStyle(
        color: textColor == null? darker : textColor,
      ),
      ),
    );
  }
}
