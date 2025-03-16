import 'package:flutter/material.dart';

class Ratingstarts extends StatelessWidget {
  final int stars;
  final double size;

  const Ratingstarts({
    super.key,
    required this.stars,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        List<Widget> starsWidgets = [];
        for (var i = 0; i < 5; i++) {
          var iconName = "images/icons/star-outlined.png";
          if ((i+1 )<= stars) {
            iconName = 'images/icons/star-filled.png';
          }
          starsWidgets.add(
            SizedBox(
              width: size,
              child: Image(
                image: AssetImage(iconName),
                fit: BoxFit.cover,
              ),
            ),
          );
        }

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: starsWidgets,
        );
      },
    );
  }
}
