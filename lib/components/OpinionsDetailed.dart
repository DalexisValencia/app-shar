import 'package:flutter/material.dart';
import 'package:shar/components/AvatarCircleWrapper.dart';
import 'package:shar/components/CommentsWrapper.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/User.dart';

class Opinionsdetailed extends StatefulWidget {
  final ProductsInterface product;
  const Opinionsdetailed({
    super.key,
    required this.product,
  });

  @override
  State<Opinionsdetailed> createState() => _OpinionsdetailedState();
}

class _OpinionsdetailedState extends State<Opinionsdetailed> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;

    return Container(
      margin: const EdgeInsets.only(
        top: 10,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      width: screenWidth,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Opiniones",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  "(${widget.product.comments.length}) comentarios",
                  style: const TextStyle(
                    fontFamily: "Inter-SemiBold",
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<UserBloc, UserState>(
              builder: (BuildContext context, UserState state) {
            return InkWell(
              child: Container(
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
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 100,
                              ),
                              const Avatarcirclewrapper(
                                avatarUrl: "/avatar-1.png",
                              ),
                              const Positioned(
                                left: 10,
                                child: Avatarcirclewrapper(
                                  avatarUrl: "/avatar-2.png",
                                ),
                              ),
                              const Positioned(
                                left: 20,
                                child: Avatarcirclewrapper(
                                  avatarUrl: "/avatar-3.png",
                                ),
                              ),
                              const Positioned(
                                left: 30,
                                child: Avatarcirclewrapper(
                                  avatarUrl: "/avatar-4.png",
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Flexible(
                      child: Text(
                        "Otros compradores han opinado sobre este producto, también puedes dejar tus comentarios y preguntas dando clic.",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                UserInterface user = state.props[1] as UserInterface;
                if (user.logged) {
                  showModalBottomSheet<void>(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Commentswrapper(
                        product: widget.product,
                      );
                    },
                  );
                } else {
                  snackBarAddCart(context, "No permitido: ",
                      "Debes tener una cuenta para poder comentar");
                }
              },
            );
          }),
        ],
      ),
    );
  }
}
