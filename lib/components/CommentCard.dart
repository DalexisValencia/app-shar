import 'package:flutter/material.dart';

class Commentcard extends StatelessWidget {
  const Commentcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  right: 10,
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://avatars.githubusercontent.com/u/61495501?v=4",
                  ),
                  radius: 25,
                ),
              ),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name user",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "26/10/2024",
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique bibendum sagittis. Maecenas tincidunt a enim at finibus. Integer ipsum nulla, ornare quis diam ut, aliquam mollis lacus.",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.star, size: 15,),
              Icon(Icons.star, size: 15,),
              Icon(Icons.star, size: 15,),
              Icon(Icons.star, size: 15,),
              Icon(Icons.star, size: 15,)
            ],
          ),
        ],
      ),
    );
  }
}
