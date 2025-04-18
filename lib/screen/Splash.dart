import 'package:flutter/material.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  late UserBloc userBlocInstance;
  @override
  void initState() {
    super.initState();
    userBlocInstance = BlocProvider.of<UserBloc>(context);
    userBlocInstance.add(
      OpenDB(),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height;

    return Scaffold(
      body: Container(
        color: blackColor,
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
                durationTime: 1500,
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
                )),
          ],
        ),
      ),
    );
  }
}
