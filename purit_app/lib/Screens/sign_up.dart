import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:purit_app/Widgets/custom_button.dart';
import 'package:purit_app/Widgets/custom_textFormfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Center(
                      child: Image.asset("assets/images/title.png"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Enter your credentials to Signup",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.person,
                    hintText: 'Enter Name',
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.email,
                    hintText: 'Enter Email',
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.phone,
                    hintText: 'Enter PhoneNumber',
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
                  SizedBox(height: 20),
                  CustomTextFormField(
                    icon: Icons.lock,
                    hintText: 'Confirm Password',
                    controller: confirmPasswordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Confirm Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: CustomButton(
                      text: 'Signup',
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
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
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey[600], // Color of the text
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Signin',
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
                                Navigator.pushNamed(context, '/login');
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
