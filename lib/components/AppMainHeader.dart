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
      color: const Color.fromARGB(255, 218, 231, 238),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 55,
                child: Image(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Ubicación',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MapScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.pin_drop),
                    label: const Text('Bogotá, Colombia'),
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
                top: 10,
              ),
              child: Text('adsdfsf'),
              color: Colors.amber[600],
              width: double.infinity,
              height: 33,
            ),
          )
        ],
      ),
    );
  }
}
