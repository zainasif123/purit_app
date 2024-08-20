import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:purit_app/Constant/colors.dart';
import 'package:purit_app/Widgets/custom_button.dart';
import 'package:purit_app/Widgets/custom_button2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
              Container(
                width: MediaQuery.of(context).size.width, // Fix here
                height: MediaQuery.of(context).size.height / 1.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CustomColors.blue,
                ),
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topCenter,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 70),
                          child: Image.asset("assets/images/filter_can.png"),
                        ),
                        Transform.rotate(
                          angle:
                              0.5 * 3.14159, // Rotate by -90 degrees (radians)
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularPercentIndicator(
                              radius: 100.0,
                              lineWidth: 50.0,
                              percent: 0.50, // 50%
                              center: Transform.rotate(
                                angle: -0.5 *
                                    3.14159, // Rotate text back to upright position
                                child: Text(
                                  '50%',
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              progressColor: Colors.white,
                              backgroundColor: Colors.white.withOpacity(0.1),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "21 more days left!",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "(233 Liters)",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: CustomButton(
                        text: 'I change the Filter',
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
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: CustomButton2(
                        text: 'Buy Spare Parts',
                        onPressed: () {
                          // Define what happens when the button is pressed
                        },
                        color: Colors.transparent, // No background color
                        borderRadius: 30.0, // Circular borders
                        textStyle: TextStyle(
                          color: Colors.white, // White text color
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        borderSide: BorderSide(
                          color: Color(0xFF18597E), // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  color: Colors
                      .transparent, // Background color inside the container
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                  border: Border.all(
                    color: CustomColors.borderCol, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                padding: EdgeInsets.all(20), // Padding inside the container
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Your Information",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black, // Text color
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 20), // Spacing between container and grid boxes
                    // Row with two grid boxes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // First grid box
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(30.0), // Circular borders
                            border: Border.all(
                              color: CustomColors.green, // Border color
                              width: 2.0, // Border width
                            ),
                            color: Colors.white, // Add color if needed
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.water_drop_sharp,
                                  color: CustomColors.green,
                                  size: 50,
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Edit or view your \n water info",
                                        style: TextStyle(
                                          color: Colors
                                              .black, // Set the text color
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Second grid box
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(30.0), // Circular borders
                            border: Border.all(
                              color: CustomColors.borderCol, // Border color
                              width: 1.0, // Border width
                            ),
                            color:
                                CustomColors.lightGray, // Add color if needed
                          ),
                          child: Center(
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "12\n",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 40,
                                      color: CustomColors
                                          .blue, // Set the text color
                                    ),
                                  ),
                                  TextSpan(
                                    text: "Filter Changed",
                                    style: TextStyle(
                                      color: Colors.black, // Set the text color
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: CustomColors
                      .lightGray, // Background color inside the container
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                  border: Border.all(
                    color: CustomColors.borderCol, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                padding: EdgeInsets.all(20), // Padding inside the container
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the column vertically
                  crossAxisAlignment: CrossAxisAlignment
                      .center, // Center the column horizontally
                  children: [
                    Image.asset("assets/images/call.png"),
                    SizedBox(height: 20), // Spacing between icon and text
                    Text(
                      'Whatsapp support available Monday to \n \t\t\t\t\t\t\t\t\t\t\t\t\t\tFriday via messaging',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Spacing between text and button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 70),
                      child: CustomButton2(
                        text: 'Contact',
                        onPressed: () {
                          // Define what happens when the button is pressed
                        },
                        color: Colors.transparent, // No background color
                        borderRadius: 30.0, // Circular borders
                        textStyle: TextStyle(
                          color: CustomColors.green, // White text color
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        borderSide: BorderSide(
                          color: CustomColors.green, // Border color
                          width: 1.0, // Border width
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors
                      .transparent, // Background color inside the container
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                  border: Border.all(
                    color: CustomColors.borderCol, // Border color
                    width: 1.0, // Border width
                  ),
                ),
                padding: EdgeInsets.all(20), // Padding inside the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/image4.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Try the new shower filter!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Enjoy all the benefits of pure water \neven in the shower, for the well-\nbeing of your skin and hair",
                          style: TextStyle(
                              color: Color.fromARGB(255, 177, 177, 177)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: CustomButton(
                            text: 'DISCOVER MORE',
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors
                      .transparent, // Background color inside the container
                  borderRadius: BorderRadius.circular(30.0), // Circular borders
                  border: Border.all(
                    color: CustomColors.borderCol, // Border color
                    width: 2.0, // Border width
                  ),
                ),
                padding: EdgeInsets.all(20), // Padding inside the container
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/image2.png"),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Plastic bottles avoided",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1700",
                          style: TextStyle(
                              color: CustomColors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          "Thank you, Your contribution is \nimportant for the environment",
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
