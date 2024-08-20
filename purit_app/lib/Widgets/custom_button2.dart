import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;
  final TextStyle textStyle;
  final BorderSide? borderSide; // Optional border side

  const CustomButton2({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = Colors.transparent, // Default color is transparent
    this.borderRadius = 30.0, // Default border radius
    this.textStyle = const TextStyle(
      color: Colors.white, // Default text color
      fontWeight: FontWeight.bold,
      fontSize: 16, // Default font size
    ),
    this.borderSide, // Optional border side
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: borderSide ?? BorderSide.none, // Use optional border side
        ),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        elevation: 0, // No shadow
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
