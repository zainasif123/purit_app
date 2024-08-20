import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button2.dart';
import 'package:purit_app/Widgets/custom_iconbutton.dart';

class ProfileScreen extends StatelessWidget {
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
                    'Profile',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width, // Fix here
                height: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF044a73),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/person2.png'),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Arslan Goursi",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500)),
                            Text("abc121234@gmai.com",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.edit_note_sharp,
                          size: 40,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomIconButton(
                icon: Icons.phone,
                text: "0300-12345657",
                backgroundColor: CustomColors.lightGray,
                iconColor: CustomColors.blue,
                textColor: Colors.black54,
                onPressed: () {
                  print("Send button pressed");
                  // Add your desired action here
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomIconButton(
                icon: Icons.lock,
                text: "Change Password",
                backgroundColor: CustomColors.lightGray,
                iconColor: CustomColors.blue,
                textColor: Colors.black54,
                onPressed: () {
                  Navigator.pushNamed(context, '/edit');
                  print("Send button pressed");
                  print("Send button pressed");
                  // Add your desired action here
                },
              ),
              SizedBox(
                height: 20,
              ),
              CustomIconButton(
                icon: Icons.question_mark_rounded,
                text: "Questionnaire Answers",
                backgroundColor: CustomColors.lightGray,
                iconColor: CustomColors.blue,
                textColor: Colors.black54,
                onPressed: () {
                  Navigator.pushNamed(context, '/questionnaiers');
                  print("Send button pressed");
                  // Add your desired action here
                },
              ),
              SizedBox(height: 120),
              // Spacing between text and button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton2(
                  text: 'Logout',
                  onPressed: () {
                    // Define what happens when the button is pressed
                  },
                  color: Colors.transparent, // No background color
                  borderRadius: 30.0, // Circular borders
                  textStyle: TextStyle(
                    color: Colors.black, // White text color
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  borderSide: BorderSide(
                    color: Colors.black, // Border color
                    width: 1.0, // Border width
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
