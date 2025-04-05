import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shar/screen/tabs/Tabswrapper.dart';
import 'package:shar/screen/Splash.dart';
import 'package:shar/blocs/favorites/comments_bloc.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool splashScreen = true;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        splashScreen = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoritesBloc>(
          create: (context) => FavoritesBloc(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc(),
        ),
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider<CommentsBloc>(
          create: (context) => CommentsBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SHAR APP',
        theme: ThemeData(
          fontFamily: "Cocogoose",
          useMaterial3: true,
        ),
        home: splashScreen ? const Splash() : const Tabswrapper(),
      ),
    );
  }
}
