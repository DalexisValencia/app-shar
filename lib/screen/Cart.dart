import 'package:flutter/material.dart';
import 'package:shar/components/CartCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late CartBloc cartBlocIntance;

  @override
  void initState() {
    super.initState();
    cartBlocIntance = BlocProvider.of<CartBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var screenHeight = (mediaQuery.size.height - 270);

    return Column(
      children: [
        Container(
          height: screenHeight,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: BlocBuilder<CartBloc, CartState>(
                builder: (BuildContext context, CartState state) {
                  List<ProductsInterface> carList =
                      state.props[0] as List<ProductsInterface>;
                  if (carList.isEmpty) {
                    return const Fallbacks(
                      description:
                          "Aún no has agregado ningún producto a tu carrito",
                    );
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
          ),
        ),
        BlocBuilder<CartBloc, CartState>(
          builder: (BuildContext context, CartState state) {
            List<ProductsInterface> carProducts =
                state.props[0] as List<ProductsInterface>;
            var isEmpty = carProducts.isEmpty;

            return Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 60,
              child: TextButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                     RoundedRectangleBorder(
                      side: BorderSide(
                        color: isEmpty ? greyLightColor : yellowColor,
                      ),
                    ),
                  ),
                  backgroundColor: WidgetStateProperty.all<Color>(
                    isEmpty ? greyLightColor : yellowColor,
                  ),
                ),
                onPressed: isEmpty ? null : () {} ,
                child: Text(
                  'REALIZAR COTIZACIÓN',
                  style: TextStyle(
                    color: isEmpty ? greyColor : blackColor ,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
