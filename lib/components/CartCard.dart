import 'package:flutter/material.dart';
import 'package:shar/screen/ProductsDetailed.dart';
import 'package:shar/animations/Fadetransitionwrapper.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Fadetransitionwrapper(
      durationTime: 1500,
      widgetChild: Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductsDetailed(),
              ),
            );
          },
          child: Card(
            elevation: 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Hero(
                      tag: 'imageProductHero',
                      child: Container(
                        width: screenWidth * 0.2,
                        height: 105,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: AssetImage("images/base-product.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
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
                    ),
                  ],
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  width: screenWidth * 0.60,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Product name",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque varius congue finibus. Interdum et ...",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        padding: const EdgeInsets.all(5),
                        constraints: const BoxConstraints(maxHeight: 40),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          size: 15,
                        ),
                      ),
                      const Text(
                        "1",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Inter-SemiBold",
                        ),
                      ),
                      IconButton(
                        padding: const EdgeInsets.all(5),
                        constraints: const BoxConstraints(maxHeight: 40),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
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
      ),
    );
  }
}
