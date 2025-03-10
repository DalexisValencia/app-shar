import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          initialPage: 0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayCurve: Curves.fastOutSlowIn,
          height: MediaQuery.of(context).size.width * 0.42,
        ),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                  child: const ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    child: Image(
                      image: AssetImage('images/Sliders/slider-1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
