import 'package:flutter/material.dart';

import 'package:shar/components/CommentCard.dart';
import 'package:shar/components/barPercentageRating.dart';
import 'package:shar/components/ratingStarts.dart';
import 'package:shar/interfaces/CommentsInterface.dart';
import 'package:shar/constants/contants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/comments_bloc.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:shar/interfaces/User.dart';

class Comments extends StatelessWidget {
  final List<CommentsInterface> comments;
  final double parentHeight;
  final Function focusToComment;
  final String labelComment;
  const Comments({
    super.key,
    required this.comments,
    required this.parentHeight,
    required this.focusToComment,
    required this.labelComment,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var commentZone = 70;

    return Column(
      children: [
        Container(
          height: parentHeight - commentZone,
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
                                        0.0, -10.0, 0.0),
                                    child: const Column(
                                      children: [
                                        Ratingstarts(
                                          stars: 3,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          height: 5,
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
                        child: BlocBuilder<CommentsBloc, CommentState>(
                          builder: (BuildContext context, CommentState state) {
                            List<CommentsInterface> comments =
                                state.props[0] as List<CommentsInterface>;

                            List<Widget> allComments = [];
                            comments.asMap().entries.map((e) {
                              allComments.add(
                                Commentcard(
                                  comments: e.value,
                                ),
                              );
                            }).toList();
                            return Column(
                              children: allComments,
                            );
                          },
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
          decoration: const BoxDecoration(
            color: blackColor,
            border: Border(
              top: BorderSide(
                color: yellowColor,
                width: 1,
              ),
            ),
          ),
          height: 70,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: greyColor,
                radius: 22,
                child: BlocBuilder<UserBloc, UserState>(
                  builder: (BuildContext context, UserState state) {
                    String userName = "IN";
                    try {
                      UserInterface user = state.props[1] as UserInterface;
                      if (user.logged) {
                        userName = user.name.substring(0, 1).toUpperCase();
                      }
                    } catch (e) {
                      print("Un error ha ocurrido con el login");
                    }

                    return Text(
                      userName,
                      style: const TextStyle(
                        color: blackColor,
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    height: 40,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: whiteColor,
                    ),
                    width: screenWidth * 0.70,
                    margin: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 20,
                      ),
                      child: Text(
                        labelComment.isEmpty
                            ? "Ingresa tu comentario..."
                            : labelComment,
                        style: const TextStyle(
                          fontSize: 11,
                          color: greyColor,
                        ),
                      ),
                    ),
                  ),
                  onTap: () => focusToComment(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
    /*return */
  }
}
