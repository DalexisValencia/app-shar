import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/CommentsInterface.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/screen/Comments.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/comments_bloc.dart';
import 'package:shar/interfaces/User.dart';
import 'package:intl/intl.dart';


class Commentswrapper extends StatefulWidget {
  final ProductsInterface product;
  const Commentswrapper({
    super.key,
    required this.product,
  });

  @override
  State<Commentswrapper> createState() => _CommentswrapperState();
}

class _CommentswrapperState extends State<Commentswrapper> {
  late FocusNode searchFocusNode;
  late CommentsBloc commentsBlocInstance;
  final commentText = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchFocusNode = FocusNode();
    commentsBlocInstance = BlocProvider.of<CommentsBloc>(context);
    commentsBlocInstance.add(CommentsByProduct(
      comments: widget.product.comments,
    ));
  }

  addComment(UserInterface user) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('MM/dd/yyyy');
    final String formattedDate = formatter.format(now);

    commentsBlocInstance.add(
      AddCommentToProduct(
        comment: CommentsInterface(
          id: DateTime.timestamp() as String,
          name: user.name,
          img: "",
          date: formattedDate,
          comment: commentText.text,
          rating: 4,
        ),
      ),
    );
    commentText.clear();
  }

  @override
  void dispose() {
    searchFocusNode.dispose();
    super.dispose();
  }

  focusToComment() {
    searchFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenWidth = mediaQuery.size.width;
    var screenHeight =
        (mediaQuery.size.height - mediaQuery.viewPadding.top) - 170;
    var eyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Stack(
      children: [
        SizedBox(
          height: screenHeight,
          child: DraggableScrollableSheet(
            initialChildSize: 1,
            builder: (context, scrollController) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: const Text(
                    'Comentarios',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                Container(
                  height: screenHeight - 35,
                  child: Comments(
                    comments: widget.product.comments,
                    parentHeight: screenHeight - 35,
                    focusToComment: focusToComment,
                    labelComment: commentText.text,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: eyboardVisible ? MediaQuery.of(context).viewInsets.bottom : 0,
          child: Opacity(
            opacity: eyboardVisible ? 1 : 0,
            child: Container(
              width: screenWidth,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: const BoxDecoration(
                color: blackColor,
                border: Border(
                  top: BorderSide(
                    color: yellowColor,
                    width: 1,
                  ),
                ),
              ),
              child: BlocBuilder<UserBloc, UserState>(
                builder: (BuildContext context, UserState state) {
                  String userName = "IN";
                  try {
                    UserInterface user = state.props[1] as UserInterface;
                    if (user.logged) {
                      userName = user.name.substring(0, 1).toUpperCase();
                    }

                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: greyColor,
                              radius: 22,
                              child: Text(
                                userName,
                                style: const TextStyle(
                                  color: blackColor,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: screenWidth * 0.60,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: whiteColor,
                              ),
                              margin: const EdgeInsets.only(
                                left: 10,
                              ),
                              child: TextFormField(
                                controller: commentText,
                                onFieldSubmitted: (value) => {
                                  addComment(user),
                                },
                                focusNode: searchFocusNode,
                                enableSuggestions: true,
                                autocorrect: false,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Ingresa un comentario comentario';
                                  }
                                  return null;
                                },
                                autofocus: false,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: blackColor,
                                ),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: whiteColor,
                                  hintText: 'Ingresa tu comentario ... ',
                                  contentPadding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                  ),
                                  errorStyle: const TextStyle(
                                    fontSize: 9,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: greyColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: greyLightColor,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            IconButton(
                              iconSize: 20,
                              style: ButtonStyle(
                                foregroundColor:
                                    WidgetStateProperty.all<Color>(whiteColor),
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  yellowColor,
                                ),
                              ),
                              icon: const Icon(Icons.send),
                              onPressed: () {
                                if (user.logged) {
                                  addComment(user);
                                } else {
                                  snackBarAddCart(context, "No permitido: ",
                                      "Debes tener una cuenta para poder comentar");
                                }
                              },
                            ),
                          ],
                        ),
                      ],
                    );
                  } catch (e) {
                    print("Ha ocurrido un error en el login");
                    return Text("Ha ocurrido un error");
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
