import 'package:flutter/material.dart';
import 'package:shar/components/header.dart';

import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/categoryWrapper.dart';
import 'package:shar/screen/Home.dart';

class Tabswrapper extends StatelessWidget {
  const Tabswrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130, // Set this height
        flexibleSpace: const AppMainHeader(),
      ),
      body: const Home(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
