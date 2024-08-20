import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button.dart';

class UploadPicture extends StatelessWidget {
  UploadPicture({super.key});
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0),
                    child: Center(
                      child: Image.asset("assets/images/title.png"),
                    ),
                  ),
                  SizedBox(height: 70),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Upload Picture",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Enter your picture for profile",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 50),
                  Center(
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColors.lightGray,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: CustomColors.blue),
                          child: IconButton(
                            onPressed: () {
                              // Handle image upload
                            },
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: CustomButton(
                      text: 'Next',
                      onPressed: () {
                        // Define what happens when the button is pressed
                      },
                      color: Color.fromRGBO(143, 193, 35, 1),
                      borderRadius: 30.0,
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Skip ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Color of the 'Sign in' text
                          fontSize: 16,
                          decoration:
                              TextDecoration.underline, // Underline text
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Implement sign-in functionality here
                          },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/Frame.png', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: 150, // Adjust height as needed
            ),
          ),
        ],
      ),
    );
  }
}
