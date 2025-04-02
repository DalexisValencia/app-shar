import 'package:flutter/material.dart';
import 'package:shar/screen/MapScreen.dart';
import 'package:shar/screen/LoginPage.dart';
import 'package:shar/constants/contants.dart';

class AppMainHeader extends StatelessWidget {
  const AppMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var statusBarHeight = mediaQuery.viewPadding.top;

    return Container(
      margin: EdgeInsets.only(
        top: statusBarHeight
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: statusBarHeight > 0 ? 5 : 15,
      ),
      color: whiteColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 45,
                child: Image(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    transform: Matrix4.translationValues(0.0, 10.0, 0.0),
                    child: const Text(
                      'Ubicación',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.pin_drop,
                      size: 16,
                      color: yellowColor,
                    ),
                    label: const Text(
                      'Bogotá, Colombia',
                      style: TextStyle(
                        fontSize: 10,
                        color: greyColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    child: IconButton(
                      iconSize: 20,
                      style: ButtonStyle(
                        foregroundColor:
                            WidgetStateProperty.all<Color>(whiteColor),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          yellowColor,
                        ),
                      ),
                      icon: const Icon(Icons.person),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  /*IconButton(
                    iconSize: 20,
                    style: ButtonStyle(
                      foregroundColor:
                          WidgetStateProperty.all<Color>(whiteColor),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        yellowColor,
                      ),
                    ),
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // ...
                    },
                  ),*/
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 8,
              ),
              child: Card(
                elevation: 2,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(2.0),
                  side: const BorderSide(
                    color: greyLightColor,
                    width: 0.3,
                  ),
                ),
                color: whiteColor,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  height: 34.5,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 20,
                        child: Image(
                          image: AssetImage('images/icons/search-black.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Ingresa la Búsqueda...",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
