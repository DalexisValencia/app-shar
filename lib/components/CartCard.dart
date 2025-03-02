import 'package:flutter/material.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      child: GestureDetector(
        child: Card(
          elevation: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: screenWidth * 0.2,
                    color: Colors.blue,
                    child: const Image(
                      image: AssetImage('images/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      color: Colors.red,
                      icon: const Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  )
                ],
              ),

              Container(
                color: Colors.red,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                width: screenWidth * 0.7,
                // child: const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Product name"),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque varius congue finibus. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
                      style: TextStyle(
                        fontSize: 12.5,
                      ),
                    )
                  ],
                ),
              ),
              //),
              Container(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 15,
                      ),
                    ),
                    const Text("1"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
