import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutterdelivery1/pages/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a loading time of 3 seconds
    Timer(const Duration(seconds: 2), () {
      // Navigate to the next screen (e.g., HomeScreen) after splash screen
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Onboard()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.orange.shade300, Colors.orange],
          ),
        ),
        child: Stack(
          children: [
            // Center text/logo
            Center(
              child: Image.asset("images/logo.png",width: 250, // Set desired width
                height: 150,)
            ),
            // Positioned burgers at the bottom
           
          ],
        ),
      ),
    );
  }
}

// Dummy HomeScreen for navigation after splash

