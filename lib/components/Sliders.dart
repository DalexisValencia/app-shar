import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shar/Lists/SlidersList.dart';
import 'package:shar/constants/contants.dart';
import 'package:url_launcher/url_launcher.dart';

class Sliders extends StatelessWidget {
  const Sliders({super.key});

  Future<void> _launchUrl(url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {
      String alert = 'Could not launch';
      // snackBarAddCart(context, widget.product.name, alert);
    }
  }

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
        items: sliderList.map((e) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => {
                  if (e.external) {
                    _launchUrl(e.action)
                  }
                } ,
                child: Card(
                elevation: 1.5,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    border: Border.all(
                      color: greyLightColor,
                      width: 0.5,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                    child: Image(
                      image: AssetImage(e.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
