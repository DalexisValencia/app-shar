import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:shar/components/CartCard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/components/fallbacks.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

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
    var screenHeight = (mediaQuery.size.height - 245);
    var statusBarHeight = mediaQuery.viewPadding.top;
    var bottomBarHeight = AppBar().preferredSize.height;

    return Column(
      children: [
        Container(
          height: screenHeight - statusBarHeight - bottomBarHeight,
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
                onPressed: isEmpty ? null : () async {
                  final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
                  final Canvas canvas = Canvas(pictureRecorder);
                  canvas.drawRect(
                    Rect.fromLTWH(0, 0, 100, 100),
                    Paint()..color = Colors.red,
                  );
                  final ui.Picture picture = pictureRecorder.endRecording();
                  final ui.Image image = await picture.toImage(100, 100);



                  var s1 = '''
                    <h2><b>Cotización:</b></h2>
                    <hr />
                    <div class="product-card">
                      <img class="product-image" src="https://static.wikia.nocookie.net/naruto/images/e/ed/El_dr%C3%A1stico_cambio_en_la_relaci%C3%B3n_entre_Naruto_y_Kurama.png/revision/latest/scale-to-width-down/1000?cb=20141223153155&path-prefix=es" alt="Producto Ejemplo">
                      <div class="product-info">
                        <div class="product-title"><b>Producto Ejemplo</b></div>
                        <div class="product-description">Esta es una breve descripción del producto. Resalta sus características principales.</div>
                        <div class="product-quantity">Cantidad: 7</div>
                      </div>
                    </div>
                  ''';
                  final Email email = Email(

                    body: s1,
                    subject: 'Cotización Via App',
                    recipients: ['d.alexis.valencia@gmail.com'],
                    cc: ['davalenciam@sanmateo.edu.co'],
                    // bcc: ['davalenciam@sanmateo.edu.co'],
                    // attachmentPaths: [image],
                    isHTML: true,
                  );

                  await FlutterEmailSender.send(email);
                },
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
