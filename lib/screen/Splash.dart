import 'package:flutter/material.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
              left: -20,
              top: -(screenHeight * 0.05),
              child: SizedBox(
                width: screenWidth * 0.55,
                child: const Image(
                  image: AssetImage('images/Logo-bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Fadetransitionwrapper(
                widgetChild: SizedBox(
                  width: screenWidth * 0.35,
                  child: const Image(
                    image: AssetImage('images/white-logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -(screenHeight * 0.05),
              right: -20,
              child: SizedBox(
                width: screenWidth * 0.55,
                child: const Image(
                  image: AssetImage('images/Logo-bg.png'),
                  fit: BoxFit.cover,
                ),
              )
            ),
          ],
        ),
      ),
    );;
  }
}
