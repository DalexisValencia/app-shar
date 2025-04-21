import 'package:flutter/material.dart';

class Slidetransitionwrapper extends StatefulWidget {
  const Slidetransitionwrapper({
    super.key,
    required this.widgetChild,
    required this.durationTime,
  });

  final Widget widgetChild;
  final int durationTime;

  @override
  State<Slidetransitionwrapper> createState() => _SlidetransitionwrapperState();
}

class _SlidetransitionwrapperState extends State<Slidetransitionwrapper>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: Duration(milliseconds: widget.durationTime),
    vsync: this,
  )..forward();

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-2, 0.0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: widget.widgetChild,
    );
  }
}
