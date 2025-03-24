import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/Lists/ProductsList.dart';

abstract class ProductsEvent {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class ProductsByCatergory extends ProductsEvent {
  final String? category;
  ProductsByCatergory({this.category});
}

class ProductsByFilter extends ProductsEvent {
  final ProductsInterface? product;
  ProductsByFilter({this.product});
}

abstract class ProductsState {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {
  final List<ProductsInterface>? products;

  ProductsInitial({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'ProductsInitial {props: products: $products';
}

class ProductsFetched extends ProductsState {
  final List<ProductsInterface>? products;

  ProductsFetched({
    this.products,
  });

  @override
  List<Object> get props => [products!];

  @override
  String toString() => 'ProductsFetched {props: products: $products,}';
}

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc()
      : super(
          ProductsInitial(
            products: productsList,
          ),
        ) {
    on<ProductsByCatergory>(
      (event, emit) {
        print(event.category);
        // event.category
        /*List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        producsState
            .map((p) =>
                {print(p.categories.where((c) => c.name == event.category))})
            .toList();*/
        emit(ProductsFetched(
          products: [],
        ));
      },
    );

    on<ProductsByFilter>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        }
        emit(ProductsFetched(
          products: resfinal,
        ));
      },
    );
  }
}
