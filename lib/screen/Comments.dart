import 'package:flutter/material.dart';

import 'package:shar/components/CommentCard.dart';
import 'package:shar/components/barPercentageRating.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight = mediaQuery.size.height - 185;

    return Column(
      children: [
        Container(
          height: screenHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: screenWidth * 0.30,
                              child: Column(
                                children: [
                                  const Text(
                                    "4.2",
                                    style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: "Inter-SemiBold",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -20.0, 0.0),
                                    child: const Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              size: 22,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 22,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 22,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 22,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 22,
                                            )
                                          ],
                                        ),
                                        Text(
                                          "400 compradores",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontFamily: "Inter-SemiBold",
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                  /* 
                              */
                                ],
                              ),
                            ),
                            const Flexible(
                              child: Column(
                                children: [
                                  Barpercentagerating(),
                                  Barpercentagerating(),
                                  Barpercentagerating(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color.fromRGBO(244, 244, 244, 1),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: const Column(
                          children: [
                            Commentcard(),
                            Commentcard(),
                            Commentcard(),
                            Commentcard(),
                            Commentcard(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          color: Colors.amber[700],
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    size: 22,
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                  ),
                  Icon(
                    Icons.star,
                    size: 22,
                  )
                ],
              ),
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/61495501?v=4",
                    ),
                    radius: 22,
                  ),
                  Container(
                    width: screenWidth * 0.8,
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                  child: TextFormField(),
                ),
                ],
              ),
            ],
          ),
        )
      ],
    );
    /*return */
  }
}
