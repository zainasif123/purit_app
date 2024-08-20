import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button.dart';
import 'package:purit_app/Widgets/custom_textFormfield.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

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
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Enter your credentials to Log in",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.phone,
                    hintText: 'Enter Phone Number',
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your PhoneNumber';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.lock,
                    hintText: 'Enter Password',
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Text("Forget Password?")],
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: CustomButton(
                      text: 'Login',
                      onPressed: () {
                        Navigator.popAndPushNamed(context, '/navhome');
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
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.grey[600], // Color of the text
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  Colors.black87, // Color of the 'Sign in' text
                              fontSize: 16,
                              decoration:
                                  TextDecoration.underline, // Underline text
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.popAndPushNamed(context, '/signup');
                                // Implement sign-in functionality here
                              },
                          ),
                        ],
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
