import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/wrapperBlocIntances.dart';
import 'package:shar/constants/contants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Scaffold(
      body: Wrapperblocintances(
        childComponent: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: screenWidth * 0.73,
                child: Stack(
                  children: [
                    Positioned(
                      top: 10,
                      right: 20,
                      child: IconButton(
                        color: blackColor,
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: const Image(
                  image: AssetImage("images/logo.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
              const Text(
                'INGRESAR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              TextField(
                autofocus: false,
                style: const TextStyle(
                  fontSize: 12,
                  color: blackColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 207, 207, 207),
                  hintText: 'Correo electrónico',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: greyColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: greyLightColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                autofocus: false,
                style: const TextStyle(
                  fontSize: 12,
                  color: blackColor,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 207, 207, 207),
                  hintText: 'Password',
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: greyColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(
                      color: greyLightColor,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                  bottom: 5,
                ),
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    backgroundColor: WidgetStateProperty.all<Color>(blackColor),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'INGRESAR',
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 20,
                ),
                width: double.infinity,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(yellowColor),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'REGISTRARSE',
                    style: TextStyle(
                      color: blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
