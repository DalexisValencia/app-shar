import 'package:flutter/material.dart';
import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/categoryWrapper.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CategoryWrapper(),
          PromotionWrapper(),
        ],
      ),
    );
  }
}