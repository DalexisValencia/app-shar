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

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(
      milliseconds: 1500,
    ),
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
    return const SingleChildScrollView(
      child: Column(
        children: [
          Fadetransitionwrapper(
            widgetChild: Sliders(),
          ),
          Fadetransitionwrapper(
            widgetChild: CategoryWrapper(),
          ),
          Fadetransitionwrapper(
            widgetChild: PromotionWrapper(),
          ),
        ],
      ),
    );
  }
}
