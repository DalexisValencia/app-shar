import 'package:flutter/material.dart';
import 'package:shar/interfaces/CommentsInterface.dart';
import 'package:shar/components/ratingStarts.dart';
import 'package:shar/constants/contants.dart';

class Commentcard extends StatelessWidget {
  final CommentsInterface comments;
  const Commentcard({
    super.key,
    required this.comments,
  });

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
                child: CircleAvatar(
                  backgroundColor: yellowColor,
                  radius: 25,
                  child: Text(
                    comments.name.substring(0, 1).toUpperCase(),
                    style: const TextStyle(
                      color: blackColor,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      comments.name,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(114, 114, 114, 1),
                      ),
                    ),
                    Text(
                      comments.date,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Color.fromRGBO(114, 114, 114, 0.5),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter-SemiBold",
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      comments.comment,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Ratingstarts(
                stars: comments.rating,
                size: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
