import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button.dart';
import 'package:purit_app/Widgets/custom_button2.dart';
import 'package:purit_app/Widgets/custom_options.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 10, top: 20),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/images/person.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello, Hassani"),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: CustomColors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/col_logo.png",
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Center(
              child: Container(
                child: Text("5/10",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width, // Fix here
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Q: Do you have other filtration systems? ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // list of options
            CustomContainerWithIcon(
              text: "a) \t Water Softener",
              iconColor: CustomColors.green,
              containerColor: CustomColors.lightGray,
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerWithIcon(
              text: "b) \t Reverse osmosis purifier",
              icon: Icons.check_circle, // Optional
              iconColor: CustomColors.green,
              containerColor: CustomColors.lightGray,
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerWithIcon(
              text: "c) \t Under-sink filter",
              iconColor: CustomColors.green,
              containerColor: CustomColors.lightGray,
            ),
            SizedBox(
              height: 10,
            ),
            CustomContainerWithIcon(
              text: "d) \t None of the above",
              iconColor: CustomColors.green,
              containerColor: CustomColors.lightGray,
            ),

            SizedBox(
              height: 30,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: CustomButton2(
                    text: '\t\t\t\t\t\t\t\t\t\t\t\Back\t\t\t\t\t\t\t\t\t\t\t',
                    onPressed: () {
                      // Define what happens when the button is pressed
                    },
                    color: Colors.transparent, // No background color
                    borderRadius: 30.0, // Circular borders
                    textStyle: TextStyle(
                      color: CustomColors.blue, // White text color
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    borderSide: BorderSide(
                      color: Color(0xFF18597E), // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
                CustomButton(
                  text: '\t\t\t\t\t\t\t\t\t\t\t\tNext\t\t\t\t\t\t\t\t\t\t\t',
                  onPressed: () {
                    // Define what happens when the button is pressed
                  },
                  color: CustomColors.green,
                  borderRadius: 30.0,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 10),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
