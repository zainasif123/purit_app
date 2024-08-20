import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button.dart';
import 'package:purit_app/Widgets/custom_textFormfield.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: CustomColors.lightGray,
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_back_ios_new_sharp),
                        ),
                      ),
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
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
                          shape: BoxShape.circle,
                          color: CustomColors.blue,
                        ),
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
                SizedBox(height: 30),
                CustomTextFormField(
                  icon: Icons.person,
                  hintText: 'Enter Name',
                  controller: nameController,
                  keyboardType: TextInputType.text,
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
                  hintText: 'Enter Phone Number',
                  controller: phoneController,
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Phone Number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: CustomButton(
                    text: 'Save',
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
                // Spacer(), // Pushes the image to the bottom
              ],
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
