import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/interfaces/ProductsInterface.dart';
import 'package:shar/Lists/ProductsList.dart';

abstract class ProductsEvent {
  const ProductsEvent();

  @override
  List<Object> get props => [];
}

class ProductsByCatergory extends ProductsEvent {
  final CategoryInterface? category;
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
  final CategoryInterface? currentCategory;
  final List<ProductsInterface>? results;

  ProductsInitial({
    this.products,
    this.currentCategory,
    this.results,
  });

  @override
  List<Object> get props => [products!, currentCategory!, results!];

  @override
  String toString() => 'ProductsFetched {props: products: $products, currentCategory: $currentCategory, results: $results}';
}

class ProductsFetched extends ProductsState {
  final List<ProductsInterface>? products;
  final CategoryInterface? currentCategory;
  final List<ProductsInterface>? results;

  ProductsFetched({
    this.products,
    this.currentCategory,
    this.results,
  });

  @override
  List<Object> get props => [products!, currentCategory!, results!];

  @override
  String toString() => 'ProductsFetched {props: products: $products, currentCategory: $currentCategory, results: $results}';
}

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc()
      : super(
          ProductsInitial(
            products: productsList,
            currentCategory: categoryList[0],
            results: [],
          ),
        ) {
    on<ProductsByCatergory>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> productsResults = producsState
                .where(
                  (p) => p.categories.contains(event.category),
                )
                .toList();
        emit(
          ProductsFetched(
            products: producsState,
            currentCategory: event.category,
            results: productsResults,
          ),
        );
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
