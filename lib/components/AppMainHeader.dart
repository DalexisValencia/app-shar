import 'package:flutter/material.dart';
import 'package:shar/screen/MapScreen.dart';
import 'package:shar/screen/LoginPage.dart';

class AppMainHeader extends StatelessWidget {
  const AppMainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      color: const Color.fromARGB(255, 255, 255, 255),
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
                    icon:
                        const Icon(Icons.pin_drop, size: 16, color: Colors.red),
                    label: const Text(
                      'Bogotá, Colombia',
                      style: TextStyle(
                        fontSize: 10,
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
                            WidgetStateProperty.all<Color>(Colors.white),
                        backgroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromARGB(255, 219, 169, 3),
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
                  IconButton(
                    iconSize: 20,
                    style: ButtonStyle(
                      foregroundColor:
                          WidgetStateProperty.all<Color>(Colors.white),
                      backgroundColor: WidgetStateProperty.all<Color>(
                        const Color.fromARGB(255, 219, 169, 3),
                      ),
                    ),
                    icon: const Icon(Icons.shopping_cart),
                    onPressed: () {
                      // ...
                    },
                  ),
                ],
              )
            ],
          ),
          GestureDetector(
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
                    color: Color.fromARGB(255, 201, 201, 201),
                    width: 0.3,
                  ),
                ),
                color: Colors.white,
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
