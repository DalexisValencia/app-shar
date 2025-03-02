import 'package:flutter/material.dart';
import 'package:shar/components/AvatarCircleWrapper.dart';

class ProductsDetailed extends StatelessWidget {
  const ProductsDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: screenWidth * 0.5,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 10,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("ProductName"),
                    Text("Product Detailed"),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Text("Total reviews")
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin efficitur risus id nulla iaculis suscipit. Maecenas aliquam erat ut purus tincidunt luctus. ")),
                Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        child: const Row(
                          children: [
                            Text("Opiniones"),
                            Text("(1224 comments)"),
                          ],
                        ),
                      ),
                      Container(
                        width: screenWidth,
                        color: Colors.amber,
                        margin: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                right: 5,
                              ),
                              color: Colors.green,
                               width: screenWidth * 0.15,
                              child: Expanded(
                                  child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                         width: screenWidth * 0.15,
                                      ),
                                      const Avatarcirclewrapper(avatarUrl: "",),
                                     
                                      const Positioned(
                                        left: 10,
                                        child:  Avatarcirclewrapper(avatarUrl: "",),
                                      ),
                                     const Positioned(
                                        left: 20,
                                        child:  Avatarcirclewrapper(avatarUrl: "",),
                                      ),
                                      const Positioned(
                                        left: 30,
                                        child:  Avatarcirclewrapper(avatarUrl: "",),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              ),
                            ),
                            const Flexible(
                              child: Text(
                                "Otros compradores han opinado sobre este producto, también puedes dejar tus comentarios y preguntas.",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
