import 'package:flutter/material.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/screen/Comments.dart';

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
  @override
  void initState() {
    super.initState();
    searchFocusNode = FocusNode();
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
    var _keyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

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
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom:
              _keyboardVisible ? MediaQuery.of(context).viewInsets.bottom : 0,
          child: Opacity(
            opacity: _keyboardVisible ? 1 : 0,
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
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: greyColor,
                        radius: 22,
                        child: Text(
                          'AH',
                          style: TextStyle(
                            color: blackColor,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: screenWidth * 0.70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: whiteColor,
                        ),
                        margin: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: TextFormField(
                          onFieldSubmitted: (value) => {
                            print("This is the final value"),
                            print(value)
                          },
                          focusNode: searchFocusNode,
                          enableSuggestions: true,
                          autocorrect: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingresa contraseña';
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
