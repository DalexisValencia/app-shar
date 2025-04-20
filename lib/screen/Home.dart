import 'package:flutter/material.dart';
import 'package:shar/components/promotionWrapper.dart';
import 'package:shar/components/categoryWrapper.dart';
import 'package:shar/components/Sliders.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Fadetransitionwrapper(
            durationTime: 800,
            widgetChild: Sliders(),
          ),
          Fadetransitionwrapper(
            durationTime: 1000,
            widgetChild: CategoryWrapper(full: false),
          ),
          Fadetransitionwrapper(
            durationTime: 1000,
            widgetChild: PromotionWrapper(),
          ),
        ],
      ),
    );
  }
}
