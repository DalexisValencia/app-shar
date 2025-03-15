import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1500,),
    vsync: this,
  )..forward();

  late final CurvedAnimation _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _animation.dispose();
    _controller.dispose();
    super.dispose();
  }

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
              child: FadeTransition(
                opacity: _animation,
                child: SizedBox(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
