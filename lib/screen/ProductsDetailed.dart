import 'package:flutter/material.dart';
import 'package:shar/components/AvatarCircleWrapper.dart';
import 'package:shar/components/promotionWrapper.dart';

class ProductsDetailed extends StatelessWidget {
  const ProductsDetailed({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenWidth * 0.73,
              child: Stack(
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                    child: Image(
                      image: AssetImage('images/base-product.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: IconButton(
                      color: Colors.black,
                      icon: const Icon(Icons.close),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 20,
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
                      Text(
                        "ProductName",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Product Detailed",
                        style: TextStyle(
                          fontSize: 11,
                          color: Color.fromRGBO(114, 114, 114, 0.7),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        Icon(Icons.star),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "400 Compradores",
                          style: TextStyle(
                            fontFamily: "Inter-SemiBold",
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin efficitur risus id nulla iaculis suscipit. Maecenas aliquam erat ut purus tincidunt luctus. ",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
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
                              Text(
                                "Opiniones",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "400 comentarios",
                                style: TextStyle(
                                  fontFamily: "Inter-SemiBold",
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: screenWidth,
                          margin: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  right: 5,
                                ),
                                width: 100,
                                child: Expanded(
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: 100,
                                          ),
                                          const Avatarcirclewrapper(
                                            avatarUrl: "",
                                          ),
                                          const Positioned(
                                            left: 10,
                                            child: Avatarcirclewrapper(
                                              avatarUrl: "",
                                            ),
                                          ),
                                          const Positioned(
                                            left: 20,
                                            child: Avatarcirclewrapper(
                                              avatarUrl: "",
                                            ),
                                          ),
                                          const Positioned(
                                            left: 30,
                                            child: Avatarcirclewrapper(
                                              avatarUrl: "",
                                            ),
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
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 15,
              ),
              child: const PromotionWrapper(),
            )
          ],
        ),
      ),
    );
  }
}
