import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

abstract class CartEvent {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddProductToCart extends CartEvent {
  final ProductsInterface? product;
  AddProductToCart({this.product});
}

class RemoveProductFromCart extends CartEvent {
  final ProductsInterface? product;
  RemoveProductFromCart({this.product});
}

class UpdateAmountProductFromCart extends CartEvent {
  final ProductsInterface? product;
  final String? action;
  UpdateAmountProductFromCart({
    this.product,
    this.action,
  });
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

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc()
      : super(
          CartInitial(products: []),
        ) {
    on<AddProductToCart>(
      (event, emit) {
        List<ProductsInterface> producsState =
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
        );
      },
    );

    on<RemoveProductFromCart>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        }
        emit(CartFetched(
          products: resfinal,
        ));
      },
    );

    on<UpdateAmountProductFromCart>(
      (event, emit) {
        double amountCurrent = event.product!.amount;
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        int indexFound = producsState.indexOf((event.product!));
        switch (event.action) {
          case 'add':
            amountCurrent += 1;
            break;
          case 'remove':
            amountCurrent = amountCurrent > 0 ? amountCurrent - 1 : 1;
            break;
          default:
        }
        event.product?.amount = amountCurrent;
        List<ProductsInterface> copyListProduct = List.from(producsState);
         
        copyListProduct[indexFound] = event.product!;
        emit(CartFetched(
          products: copyListProduct,
        ));
      },
    );
  }
}
