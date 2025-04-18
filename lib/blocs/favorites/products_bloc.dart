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
  final String term;
  ProductsByFilter({required this.term});
}

class ProductsByPromotion extends ProductsEvent {
  ProductsByPromotion();
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
  final bool? updateProducts;

  ProductsInitial({
    this.products,
    this.currentCategory,
    this.results,
    this.updateProducts,
  });

  @override
  List<Object> get props =>
      [products!, currentCategory!, results!, updateProducts!];

  @override
  String toString() =>
      'ProductsFetched {props: products: $products, currentCategory: $currentCategory, results: $results, updateProducts: $updateProducts}';
}

class ProductsFetched extends ProductsState {
  final List<ProductsInterface>? products;
  final CategoryInterface? currentCategory;
  final List<ProductsInterface>? results;
  final bool? updateProducts;

  ProductsFetched({
    this.products,
    this.currentCategory,
    this.results,
    this.updateProducts,
  });

  @override
  List<Object> get props =>
      [products!, currentCategory!, results!, updateProducts!];

  @override
  String toString() =>
      'ProductsFetched {props: products: $products, currentCategory: $currentCategory, results: $results}';
}

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc()
      : super(
          ProductsInitial(
            products: productsList,
            currentCategory: categoryList[0],
            results: [],
            updateProducts: false,
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
            updateProducts: true,
          ),
        );
      },
    );

    on<ProductsByFilter>(
      (event, emit) {
        var searchTerm = event.term.toLowerCase();
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;

        CategoryInterface currentCategory = state.props[1] as CategoryInterface;

        List<ProductsInterface> productsResults = producsState
            .where((p) =>
                (p.name).toLowerCase().contains(searchTerm) ||
                (p.longDescription).toLowerCase().contains(searchTerm) ||
                (p.shortDescription).toLowerCase().contains(searchTerm))
            .toList();
        emit(
          ProductsFetched(
            products: producsState,
            currentCategory: currentCategory,
            results: productsResults,
            updateProducts: false,
          ),
        );
      },
    );

    on<ProductsByPromotion>(
      (event, emit) {
        List<ProductsInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        CategoryInterface currentCategory = state.props[1] as CategoryInterface;

        List<ProductsInterface> productsResults =
            producsState.where((p) => p.promotion == true).toList();
        emit(
          ProductsFetched(
            products: producsState,
            currentCategory: currentCategory,
            results: productsResults,
            updateProducts: false,
            
          ),
        );
      },
    );
  }
}
