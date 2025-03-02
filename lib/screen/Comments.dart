import 'package:flutter/material.dart';

import 'package:shar/components/CommentCard.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                Container(
                  color: Colors.green[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: screenWidth * 0.30,
                        child: const Column(
                          children: [
                            Text(
                              "4.2",
                              style: TextStyle(
                                fontSize: 70,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 25,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 25,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 25,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 25,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 30,
                                )
                              ],
                            ),
                            Text(
                              "400 compradores",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              color: Colors.orange,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Servicio"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: screenWidth * 0.30,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              color: Colors.orange,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Servicio"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: screenWidth * 0.30,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 3,
                              ),
                              color: Colors.orange,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const Text("Servicio"),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Container(
                                        width: screenWidth * 0.30,
                                        height: 10,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Commentcard(),
                const Commentcard(),
                const Commentcard(),
                const Commentcard(),
                const Commentcard(),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                    children: [TextFormField(), TextFormField()],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    // side: BorderSide(color: Colors.black),
                  ),
                ),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.black),
                backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {},
              child: const Text(
                'AÑADIR AL CARRITO',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
