import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:purit_app/Helper/pageSelector.dart';

class PuritApp extends StatefulWidget {
  @override
  State<PuritApp> createState() => _PuritAppState();
}

class _PuritAppState extends State<PuritApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => OnboardingScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(143, 193, 35, 1), // Green color
        body: Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
              ), // Replace with your actual image path
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 30.0), // Bottom padding
                child: Text(
                  'Purit App',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
