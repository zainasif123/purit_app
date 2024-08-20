import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';

class CustomContainerWithIcon extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? iconColor;
  final Color containerColor;
  final Color textColor;

  const CustomContainerWithIcon({
    Key? key,
    required this.text,
    this.icon,
    this.iconColor,
    this.containerColor = CustomColors.lightGray, // Default color
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: containerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              ),
              if (icon != null) // Display icon only if it's provided
                Icon(
                  icon,
                  color: iconColor ?? Colors.green,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
