import 'package:flutter/material.dart';
import 'package:purit_app/Helper/pageSelector.dart';
import 'package:purit_app/Screens/EditProfile.dart';
import 'package:purit_app/Screens/Questionnaire.dart';
import 'package:purit_app/Screens/forget_password.dart';
import 'package:purit_app/Screens/home_screen.dart';
import 'package:purit_app/Screens/login.dart';
import 'package:purit_app/Screens/notification.dart';
import 'package:purit_app/Screens/profile.dart';
import 'package:purit_app/Screens/quiz.dart';
import 'package:purit_app/Screens/result.dart';
import 'package:purit_app/Screens/sign_up.dart';
import 'package:purit_app/Screens/splash_screen.dart';
import 'package:purit_app/Screens/upload_picture.dart';
import 'package:purit_app/Widgets/custom_bottomNavigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => (PuritApp()),
        '/login': (context) => (Login()),
        '/signup': (context) => (SignUp()),
        '/home': (context) => HomeScreen(),
        '/navhome': (context) => CustomBottomNavBar(),
        '/edit': (context) => EditProfile(),
        '/forget': (context) => ForgetPassword(),
        '/uploadpic': (context) => UploadPicture(),
        '/questionnaiers': (context) => Questionnaire(),
        '/notification': (context) => NotificationScreen(),
        '/profile': (context) => ProfileScreen(),
        '/quiz': (context) => QuizScreen(),
        '/result': (context) => ResultScreen(),
        '/welcome_slides': (context) => OnboardingScreen(),
      },
      title: 'Purit App',
    );
  }
}
