import 'package:flutter/material.dart';
import 'package:shar/components/header.dart';
import 'package:shar/screen/Cart.dart';
import 'package:shar/screen/Favorites.dart';
import 'package:shar/screen/Home.dart';
import 'package:shar/screen/Products.dart';
import 'package:shar/screen/Search.dart';

class Tabswrapper extends StatefulWidget {
  const Tabswrapper({super.key});

  @override
  State<Tabswrapper> createState() => _TabswrapperState();
}

class _TabswrapperState extends State<Tabswrapper> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130,
        flexibleSpace: const AppMainHeader(),
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
          setState(() {
            currentPageIndex = index;
          });
        },
        backgroundColor: Colors.black,
        indicatorColor: Colors.transparent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
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
          NavigationDestination(
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
          NavigationDestination(
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
            selectedIcon: Image(
              image: AssetImage('images/icons/cart-active.png'),
              fit: BoxFit.cover,
            ),
            icon: Badge(
              label: Text('2'),
              child: Image(
                image: AssetImage('images/icons/cart-white.png'),
                fit: BoxFit.cover,
              ),
            ),
            label: 'Cart',
          ),
          NavigationDestination(
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
  }
}
