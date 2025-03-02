import 'package:flutter/material.dart';
import 'package:shar/components/header.dart';
import 'package:shar/screen/Home.dart';
import 'package:shar/screen/Products.dart';
import 'package:shar/screen/ProductsDetailed.dart';
import 'package:shar/screen/Comments.dart';
import 'package:shar/screen/Splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHAR APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const Splash(),
      /*home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 130, // Set this height
          flexibleSpace: const AppMainHeader(),
        ),
        // body: const Products(),
        body: const Comments(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Business'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.amber[800],
        ),
      ),*/
    );
  }
}
