import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shar/blocs/favorites/users_bloc.dart';
import 'package:shar/components/CartCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/interfaces/BillInterface.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';
import 'package:shar/constants/emailTheme.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';
import 'package:shar/interfaces/User.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> with SingleTickerProviderStateMixin {
  late CartBloc cartBlocIntance;
  bool sendingPricing = false;
  bool contizationEnded = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    cartBlocIntance = BlocProvider.of<CartBloc>(context);

    _controller = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = (mediaQuery.size.height - 292);
    var screenWidth = mediaQuery.size.width;
    var statusBarHeight = mediaQuery.viewPadding.top;
    var bottomBarHeight = AppBar().preferredSize.height;

    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: !contizationEnded
              ? screenHeight - statusBarHeight - bottomBarHeight
              : screenHeight,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: horizontalPadding,
                    vertical: 10,
                  ),
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (BuildContext context, CartState state) {
                      List<ProductsInterface> carList =
                          state.props[0] as List<ProductsInterface>;
                      if (carList.isEmpty) {
                        return Container(
                            width: mediaQuery.size.width * 0.70,
                            padding: const EdgeInsets.only(
                              top: 40,
                            ),
                            child: const Column(
                              children: [
                                Image(
                                  image: AssetImage(
                                      'images/screens/empty-cart-icon.png'),
                                  fit: BoxFit.cover,
                                ),
                                Fallbacks(
                                  description: "No tienes productos en tu carrito",
                                )
                              ],
                            ));
                      }

                      return Builder(
                        builder: (BuildContext context) {
                          List<Widget> carProductsFinal = [];
                          carList.asMap().entries.map((e) {
                            carProductsFinal.add(
                              CartCard(
                                product: e.value,
                              ),
                            );
                          }).toList();
                          return Wrap(
                            children: carProductsFinal,
                          );
                        },
                      );
                    },
                  ),
                ),
                contizationEnded
                    ? Positioned(
                        child: ScaleTransition(
                          scale: _scaleAnimation,
                          child: Container(
                            width: screenWidth,
                            height: screenHeight,
                            padding: const EdgeInsets.symmetric(
                                horizontal: horizontalPadding),
                            decoration: BoxDecoration(
                              color: yellowColor,
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: const Center(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_outline,
                                  size: 105,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Su cotización ha sido enviada correctamente a su correo electrónico.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 17),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            )),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ],
            ),
          ),
        ),
        !contizationEnded
            ? BlocBuilder<CartBloc, CartState>(
                builder: (BuildContext context, CartState state) {
                  List<ProductsInterface> carProducts =
                      state.props[0] as List<ProductsInterface>;
                  var isEmpty = carProducts.isEmpty;

                  return Container(
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 60,
                    child: BlocBuilder<UserBloc, UserState>(
                      builder: (BuildContext context, UserState state) {
                        UserInterface user = state.props[1] as UserInterface;

                        return TextButton(
                          style: ButtonStyle(
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                side: BorderSide(
                                  color: isEmpty || sendingPricing
                                      ? greyLightColor
                                      : yellowColor,
                                ),
                              ),
                            ),
                            backgroundColor: WidgetStateProperty.all<Color>(
                              isEmpty || sendingPricing
                                  ? greyLightColor
                                  : yellowColor,
                            ),
                          ),
                          onPressed: isEmpty || sendingPricing
                              ? null
                              : () async {
                                  if (user.logged) {
                                    BillInterface generateBill = BillInterface(
                                      fecha: dateNow(),
                                      cliente: user.name,
                                      productos: carProducts,
                                      total: 0,
                                    );

                                    setState(() {
                                      sendingPricing = true;
                                    });

                                    String html =
                                        renderizarTemplate(generateBill);

                                    final smtpServer = gmail(
                                        'comunicationsappshar@gmail.com',
                                        'kjli asvp hcbd fmiq');
                                    final message = Message()
                                      ..from = const Address(
                                          'comunicationsappshar@gmail.com',
                                          'SHAR Cotizaciones')
                                      ..recipients.add(const Address(
                                          'd.alexis.valencia@gmail.com'))
                                      ..recipients.add(Address(user.email))
                                      ..subject = 'Resumen de su cotización'
                                      ..html = html;
                                    try {
                                      await send(message, smtpServer).then((e) {
                                        setState(() {
                                          sendingPricing = false;
                                        });
                                        cartBlocIntance.add(ClearCart());
                                        setState(() {
                                          contizationEnded = true;
                                        });
                                        _controller.forward();
                                      });
                                      // print('Message sent: $sendReport');
                                    } catch (e) {
                                      snackBarAddCart(context, "Error: ",
                                          "Un error ha ocurrido, intente más tarde.");
                                      setState(() {
                                        sendingPricing = false;
                                      });
                                    }
                                  } else {
                                    snackBarAddCart(context, "No permitido: ",
                                        "Debes tener una cuenta para poder realizar cotizaiones");
                                  }
                                },
                          child: Text(
                            sendingPricing
                                ? 'ENVIANDO COTIZACIÓN'
                                : 'REALIZAR COTIZACIÓN',
                            style: TextStyle(
                              color: isEmpty || sendingPricing
                                  ? greyColor
                                  : blackColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              )
            : const SizedBox(
                width: 0,
              ),
      ],
    );
  }
}
