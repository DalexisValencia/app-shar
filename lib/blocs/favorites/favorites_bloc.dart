import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

abstract class FavoritesEvent {
  const FavoritesEvent();

  @override
  List<Object> get props => [];
}

class AddProductToFavorite extends FavoritesEvent {
  final ProductsInterface? product;
  AddProductToFavorite({this.product});
}

class RemoveProductFromFavorite extends FavoritesEvent {
  final ProductsInterface? product;
  RemoveProductFromFavorite({this.product});
}

abstract class FavoritesState {
  const FavoritesState();

  @override
  List<Object> get props => [];
}

class FavoritesInitial extends FavoritesState {
  final List<ProductsInterface>? products;

  FavoritesInitial({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'FavoritesInitial {props: products: $products';
}

class FavoritesFetched extends FavoritesState {
  final List<ProductsInterface>? products;

  FavoritesFetched({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'FavoritesFetched {props: products: $products,}';
}

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc()
      : super(
          FavoritesInitial(products: []),
        ) {
    on<AddProductToFavorite>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        } else if (!producsState.contains(event.product)) {
          resfinal.add(event.product!);
        }
        emit(FavoritesFetched(
          products: resfinal,
        ));
      },
    );

    on<RemoveProductFromFavorite>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        }
        emit(FavoritesFetched(
          products: resfinal,
        ));
      },
    );
  }
}
