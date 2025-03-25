import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/wrapperBlocIntances.dart';
import 'package:shar/screen/tabs/Tabswrapper.dart';
import 'package:shar/screen/Splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool splashScreen = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        splashScreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHAR APP',
      theme: ThemeData(
        fontFamily: "Cocogoose",
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: splashScreen
          ? const Splash()
          : const Wrapperblocintances(
            childComponent: Tabswrapper(),
           ),
    );
  }
}
