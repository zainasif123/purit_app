import 'package:flutter/material.dart';
import 'package:purit_app/Constant/colors.dart';

class WelcomeScreen1 extends StatelessWidget {
  final VoidCallback onNext;

  const WelcomeScreen1({Key? key, required this.onNext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image at the top
          Opacity(
            opacity: 0.8,
            child: Image.asset(
              'assets/images/welcome_img1.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.4,
            ),
          ),
          // Linear gradient in the middle
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 1.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    CustomColors.green, // Green color
                  ],
                ),
              ),
            ),
          ),
          // Solid green color at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height:
                  MediaQuery.of(context).size.height / 3, // Adjust as needed
              color: Color.fromRGBO(143, 193, 35, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Welcome to the \n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white, // Set the text color
                              fontSize: 36, // Adjust the font size
                            ),
                          ),
                          TextSpan(
                            text: "Purit App!",
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 36, // Adjust the font size
                              fontWeight: FontWeight.bold, // Make it bold
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Calculate track your filter life easily",
                    style: TextStyle(
                        color: Colors.white60,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Implement your skip functionality here
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                color:
                                    Colors.white, // Set the text color to white
                              ),
                            ),
                          ),
                          TextButton.icon(
                            iconAlignment: IconAlignment.end,
                            onPressed: () {
                              // Call the onNext callback to navigate to the next page
                              onNext();
                            },
                            label: Text(
                              "Next",
                              style: TextStyle(
                                color:
                                    Colors.white, // Set the text color to white
                              ),
                            ),
                            icon: Icon(
                              Icons.arrow_forward,
                              color:
                                  Colors.white, // Set the icon color to white
                            ),
                          ),
                        ],
                      ),
                    ),
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
