import 'package:flutter/material.dart';

class PromotionItem extends StatelessWidget {
  const PromotionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 250,
        child: Card(
          color: Colors.green,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/base-product.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      width: 250,
                      child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 10,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(50)
                              ),
                            ),
                            child: const Row(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 12,
                                )
                              ],
                            ),
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.favorite),
                            onPressed: () {},
                          )
                        ],
                      ),
                      ), 
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Manómetro Presostato",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Mide la presión de un fluido en un sistema hidráulico y al mismo tiempo, activa o desactiva un circuito ...",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        side: BorderSide(color: Colors.red),
                      ),
                    ),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.blue),
                    backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
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
        ),
      ),
    );
  }
}
