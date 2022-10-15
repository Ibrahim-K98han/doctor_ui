import 'dart:async';

import 'package:doctor_ui/const.dart';
import 'package:doctor_ui/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 30,
              left: 20,
              child: Container(
                height: size.height / 6,
                width: size.height / 6,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: bubbleColor),
              ),
            ),
            Positioned(
              bottom: 30,
              right: 20,
              child: Container(
                height: size.height / 7,
                width: size.height / 7,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: bubbleColor),
              ),
            ),
            Positioned(
              top: 200,
              left: 50,
              child: Container(
                height: size.height / 4.5,
                width: size.height / 4.5,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: bubbleColor),
              ),
            ),
            Positioned(
              top: 80,
              right: 0,
              child: Container(
                height: size.height / 5,
                width: size.height / 9,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        bottomLeft: Radius.circular(100)),
                    color: bubbleColor),
              ),
            ),
            Positioned(
              top: 230,
              right: 30,
              child: Container(
                height: size.height / 10,
                width: size.height / 10,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: bubbleColor),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: size.height / 5,
                width: size.height / 5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(80),
                    ),
                    color: bubbleColor),
              ),
            ),
            Positioned(
              top: 200,
              left: 60,
              child: RichText(
                text: TextSpan(
                    text: 'Doctor',
                    style: TextStyle(
                      fontSize: 60,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                          text: '\nHelpline', style: TextStyle(fontSize: 20))
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
