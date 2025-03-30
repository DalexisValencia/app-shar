import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

abstract class UserEvent {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUserToDB extends UserEvent {
  final ProductsInterface? product;
  AddUserToDB({this.product});
}

class RemoveUserFromDb extends UserEvent {
  final ProductsInterface? product;
  RemoveUserFromDb({this.product});
}

abstract class CartState {
  const CartState();

  @override
  List<Object> get props => [];
}

class CartInitial extends CartState {
  final List<ProductsInterface>? products;

  CartInitial({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'FavoritesInitial {props: products: $products';
}

class CartFetched extends CartState {
  final List<ProductsInterface>? products;

  CartFetched({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'FavoritesFetched {props: products: $products,}';
}

class CartBloc extends Bloc<UserEvent, CartState> {
  CartBloc()
      : super(
          CartInitial(products: []),
        ) {
    on<AddUserToDB>(
      (event, emit) {
        /*List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        } else if (!producsState.contains(event.product)) {
          resfinal.add(event.product!);
        }
        emit(
          CartFetched(
            products: resfinal,
          ),
        );*/
      },
    );

    on<RemoveUserFromDb>(
      (event, emit) {
        /*List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        }
        emit(CartFetched(
          products: resfinal,
        ));*/
      },
    );
  }
}
