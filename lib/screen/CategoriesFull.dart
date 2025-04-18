import 'package:flutter/material.dart';
import 'package:shar/components/categoryWrapper.dart';

class Categoriesfull extends StatefulWidget {
  const Categoriesfull({super.key});

  @override
  State<Categoriesfull> createState() => _CategoriesfullState();
}

class _CategoriesfullState extends State<Categoriesfull> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  left: 20,
                  right: 20,
                ),
                child: Text("Todas las categorías"),
              ),
              CategoryWrapper(
                full: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
