import 'package:flutter/material.dart';
import 'package:shar/components/AppMainHeader.dart';
import 'package:shar/screen/Cart.dart';
import 'package:shar/screen/Favorites.dart';
import 'package:shar/screen/Home.dart';
import 'package:shar/screen/Products.dart';
import 'package:shar/screen/Search.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/constants/contants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shar/blocs/favorites/navigation_bloc.dart';

class Tabswrapper extends StatefulWidget {
  const Tabswrapper({super.key});

  @override
  State<Tabswrapper> createState() => _TabswrapperState();
}

class _TabswrapperState extends State<Tabswrapper> {
  late NavigationBloc navigationBlocIntance;
  final String phoneNumber = '+573042170374'; // Cambia a tu número
  final String message = '¡Hola! Me gustaría más información.';

  void openWhatsApp() async {
    final Uri whatsappUrl = Uri.parse(
      "https://wa.me/${phoneNumber.replaceAll('+', '')}?text=${Uri.encodeComponent(message)}",
    );

    if (await canLaunchUrl(whatsappUrl)) {
      await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
    } else {
      throw 'No se pudo abrir WhatsApp';
    }
  }

  @override
  void initState() {
    super.initState();
    navigationBlocIntance = BlocProvider.of<NavigationBloc>(context);
  }

  goToTab(int index) {
    navigationBlocIntance.add(
      GoToTab(tabIndex: index),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (BuildContext context, NavigationState state) {
        int currentPageIndex = state.props[0] as int;
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 130,
            flexibleSpace: const AppMainHeader(),
          ),
          floatingActionButton: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            onPressed: openWhatsApp,
            tooltip: 'Contactar por WhatsApp',
            backgroundColor: Colors.green,
            child: Image.asset('images/icons/whatsapp-icon.png', width: 30, height: 30),
          ),
          body: <Widget>[
            const Home(),
            const Products(),
            const Search(),
            const Cart(),
            const Favorites(),
          ][currentPageIndex],
          bottomNavigationBar: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            onDestinationSelected: (int index) {
              goToTab(index);
            },
            backgroundColor: blackColor,
            indicatorColor: Colors.transparent,
            selectedIndex: currentPageIndex,
            destinations: <Widget>[
              const NavigationDestination(
                selectedIcon: Image(
                  image: AssetImage('images/icons/home-active.png'),
                  fit: BoxFit.cover,
                ),
                icon: Image(
                  image: AssetImage('images/icons/home-white.png'),
                  fit: BoxFit.cover,
                ),
                label: 'Home',
              ),
              const NavigationDestination(
                selectedIcon: Image(
                  image: AssetImage('images/icons/store-active.png'),
                  fit: BoxFit.cover,
                ),
                icon: Image(
                  image: AssetImage('images/icons/store-white.png'),
                  fit: BoxFit.cover,
                ),
                label: 'Products',
              ),
              const NavigationDestination(
                selectedIcon: Image(
                  image: AssetImage('images/icons/search-active.png'),
                  fit: BoxFit.cover,
                ),
                icon: Image(
                  image: AssetImage('images/icons/search-white.png'),
                  fit: BoxFit.cover,
                ),
                label: 'Search',
              ),
              NavigationDestination(
                selectedIcon: const Image(
                  image: AssetImage('images/icons/cart-active.png'),
                  fit: BoxFit.cover,
                ),
                icon: BlocBuilder<CartBloc, CartState>(
                  builder: (BuildContext context, CartState state) {
                    List<ProductsInterface> carProducts =
                        state.props[0] as List<ProductsInterface>;
                    int totalProducts = 0;
                    carProducts.asMap().entries.map((e) {
                      totalProducts += e.value.amount;
                    }).toList();
                    var isEmpty = carProducts.isEmpty;

                    const carIcon = Image(
                      image: AssetImage('images/icons/cart-white.png'),
                      fit: BoxFit.cover,
                    );

                    return isEmpty
                        ? carIcon
                        : Badge(
                            label: Text(
                              totalProducts.toString(),
                              style: const TextStyle(
                                fontSize: 11,
                                fontFamily: "Inter-SemiBold",
                              ),
                            ),
                            child: carIcon,
                          );
                  },
                ),
                label: 'Cart',
              ),
              const NavigationDestination(
                selectedIcon: Image(
                  image: AssetImage('images/icons/favorite-active.png'),
                  fit: BoxFit.cover,
                ),
                icon: Image(
                  image: AssetImage('images/icons/favorite-white.png'),
                  fit: BoxFit.cover,
                ),
                label: 'Favorite',
              ),
            ],
          ),
        );
      },
    );
  }
}
