import 'package:flutter/widgets.dart';
import 'package:shar/blocs/favorites/comments_bloc.dart';
import 'package:shar/blocs/favorites/favorites_bloc.dart';
import 'package:shar/blocs/favorites/cart_bloc.dart';
import 'package:shar/blocs/favorites/products_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wrapperblocintances extends StatefulWidget {
  final Widget childComponent;
  const Wrapperblocintances({
    super.key,
    required this.childComponent,
  });

  @override
  State<Wrapperblocintances> createState() => _WrapperblocintancesState();
}

class _WrapperblocintancesState extends State<Wrapperblocintances> {
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
      child: widget.childComponent,
    );
  }
}
