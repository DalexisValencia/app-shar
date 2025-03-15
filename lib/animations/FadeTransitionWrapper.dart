import 'package:flutter/material.dart';

class Fadetransitionwrapper extends StatefulWidget {
  final Widget widgetChild;
  const Fadetransitionwrapper({super.key, required this.widgetChild});

  @override
  State<Fadetransitionwrapper> createState() => _FadetransitionwrapperState();
}

class _FadetransitionwrapperState extends State<Fadetransitionwrapper>
    with TickerProviderStateMixin {
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
    return FadeTransition(
      opacity: _animation,
      child: widget.widgetChild,
    );
  }
}
