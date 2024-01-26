import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({
    Key? key,
    this.hint = "",
    this.prefix,
    this.suffix,
    this.controller,
  }) : super(key: key);

  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(bottom: 3),
      height: 44,
      decoration: BoxDecoration(
        color: textBoxColor,
        border: Border.all(color: textBoxColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon: suffix,
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(color: darker, fontSize: 15),
        ),
      ),
    );
  }
}

class CustomAdvancedText extends StatelessWidget {
  const CustomAdvancedText({super.key, required this.smallText, required this.bigText});
  final String smallText;
  final String bigText;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign:TextAlign.end,
      text: TextSpan(
        children: [
          TextSpan(
            text: smallText,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: ' ', // Add a space between the two texts
          ),
          TextSpan(
            text: bigText,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color:primary, // Use theme color for big text
            ),
          ),
        ],
      ),
    );
  }
}
