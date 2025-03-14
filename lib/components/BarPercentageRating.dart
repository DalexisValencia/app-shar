import 'package:flutter/material.dart';

class Barpercentagerating extends StatelessWidget {
  const Barpercentagerating({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 3
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Servicio",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(36, 36, 36, 1),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            width: screenWidth * 0.30,
            height: 13,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(
               Radius.circular(50),
              ),
              child: LinearProgressIndicator(
                value: 0.8,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
                backgroundColor: Color.fromARGB(255, 224, 208, 208),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
