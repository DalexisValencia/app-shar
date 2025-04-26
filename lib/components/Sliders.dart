import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shar/Lists/SlidersList.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/screen/SearchFull.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  late ProductsBloc productsBlocIntance;
  Future<void> _launchUrl(url) async {
    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) {}
  }

  @override
  void initState() {
    super.initState();
    productsBlocIntance = BlocProvider.of<ProductsBloc>(context);
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
        items: sliderList.map(
          (e) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () => {
                    if (e.external)
                      {_launchUrl(e.action)}
                    else if (!e.external)
                      {
                        if (e.action == "promotion")
                          {
                            productsBlocIntance.add(
                              ProductsByPromotion(),
                            ),
                          },
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Searchfull(),
                          ),
                        ),
                      }
                  },
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
                  ),
                );
              },
            );
          },
        ).toList(),
      ),
    );
  }
}
