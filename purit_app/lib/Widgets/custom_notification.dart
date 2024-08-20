import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Color containerColor;
  final Color barColor;
  final String headingText;
  final String timeText;
  final String descriptionText;
  final TextStyle headingStyle;
  final TextStyle timeStyle;
  final TextStyle descriptionStyle;

  const NotificationCard({
    Key? key,
    required this.containerColor,
    required this.barColor,
    required this.headingText,
    required this.timeText,
    required this.descriptionText,
    required this.headingStyle,
    required this.timeStyle,
    required this.descriptionStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: containerColor, // Background color inside the container
        borderRadius: BorderRadius.circular(30.0), // Circular borders
      ),
      child: Row(
        children: [
          Container(
            width: 5, // Width of the green vertical bar
            alignment: Alignment.center,
            child: Container(
              height: 50, // Half the height of the main container
              color: barColor, // Color of the vertical bar
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 14.0,
              ), // Padding inside the container
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        headingText,
                        style: headingStyle,
                      ),
                      Text(
                        timeText,
                        style: timeStyle,
                      ),
                    ],
                  ),
                  Text(
                    descriptionText,
                    style: descriptionStyle,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
