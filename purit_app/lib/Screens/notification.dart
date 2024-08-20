import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_notification.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: CustomColors.lightGray,
                      ),
                      child:
                          Center(child: Icon(Icons.arrow_back_ios_new_sharp))),
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Unread Notification",
                    style: TextStyle(
                        color: CustomColors.blue, fontWeight: FontWeight.w600),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey.shade300, // Color of the line
                      thickness: 1, // Thickness of the line
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              NotificationCard(
                containerColor: CustomColors.lightGray,
                barColor: CustomColors.green,
                headingText: "Notification Heading",
                timeText: "2 Hours ago",
                descriptionText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                headingStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                timeStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                descriptionStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NotificationCard(
                containerColor: CustomColors.lightGray,
                barColor: CustomColors.green,
                headingText: "Notification Heading",
                timeText: "2 Hours ago",
                descriptionText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                headingStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                timeStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                descriptionStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              NotificationCard(
                containerColor: CustomColors.lightGray,
                barColor: CustomColors.green,
                headingText: "Notification Heading",
                timeText: "2 Hours ago",
                descriptionText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                headingStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                timeStyle: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                descriptionStyle: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Read Notification",
                        style: TextStyle(
                            color: CustomColors.blue,
                            fontWeight: FontWeight.w600),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300, // Color of the line
                          thickness: 1, // Thickness of the line
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  NotificationCard(
                    containerColor: CustomColors.lightGray,
                    barColor: Colors.grey.shade400,
                    headingText: "Notification Heading",
                    timeText: "2 Hours ago",
                    descriptionText:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                    headingStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    timeStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    descriptionStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  NotificationCard(
                    containerColor: CustomColors.lightGray,
                    barColor: Colors.grey.shade400,
                    headingText: "Notification Heading",
                    timeText: "2 Hours ago",
                    descriptionText:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                    headingStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    timeStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                    descriptionStyle: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
