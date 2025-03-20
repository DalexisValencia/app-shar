import 'package:shar/Lists/CategoriesList.dart';
import 'package:shar/Lists/CommentsList.dart';
import 'package:shar/interfaces/ProductsInterface.dart';

List<ProductsInterface> productsList = [
  ProductsInterface(
    id: "product-1",
    name: "Primer producto con texto largo",
    shortDescription: "ejemplo de descripcion",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[0],
      categoryList[1],
      categoryList[2],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-2",
    name: "Segundo producto con texto largo",
    shortDescription: "ejemplo de descripcion",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[3],
      categoryList[4],
      categoryList[5],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-3",
    name: "Tercer producto con texto largo",
    shortDescription: "Sin promocion",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: ["tag 5", "tag 6", "tag 8"],
    comments: commentsList,
    categories: [
      categoryList[6],
      categoryList[7],
      categoryList[8],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-4",
    name: "Cuarto producto con texto largo",
    shortDescription: "Sin Comentarios",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: ["tagcito numerado", "tag #2", "tag 8"],
    comments: [],
    categories: [
      categoryList[1],
      categoryList[2],
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-5",
    name: "Quinto producto con texto largo",
    shortDescription: "Sin promocion",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[12],
      categoryList[13],
      categoryList[14],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-6",
    name: "Sexto producto con texto largo",
    shortDescription: "Sin tags",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 4,
    tagsMenu: [],
    comments: commentsList,
    categories: [
      categoryList[1],
      categoryList[2],
      categoryList[3],
    ],
    promotion: true,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-7",
    name: "Septimo producto con texto largo",
    shortDescription: "Sin tags ni comentarios",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 2,
    tagsMenu: [],
    comments: [],
    categories: [
      categoryList[4],
      categoryList[5],
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-8",
    name: "Octavo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 10", "tag 21", "tag 33"],
    comments: commentsList,
    categories: [
      categoryList[7],
      categoryList[8],
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-9",
    name: "Octavo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 10", "tag 21", "tag 33"],
    comments: commentsList,
    categories: [
      categoryList[10],
      categoryList[11],
      categoryList[12],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-8",
    name: "noveno producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 10", "tag 21", "tag 33"],
    comments: commentsList,
    categories: [
      categoryList[7],
      categoryList[8],
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-10",
    name: "decimo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 5", "tag 6", "tag 7"],
    comments: commentsList,
    categories: [
      categoryList[13],
      categoryList[14],
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-11",
    name: "Onceavo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 6", "tag 7", "tag 8"],
    comments: commentsList,
    categories: [
      categoryList[1],
      categoryList[2],
      categoryList[3],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-12",
    name: "doceavo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[4],
      categoryList[5],
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-13",
    name: "Treceavo producto con texto largo",
    shortDescription: "Producto con rating mediano",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 3,
    tagsMenu: ["tag 11", "tag 12", "tag 13"],
    comments: commentsList,
    categories: [
      categoryList[7],
      categoryList[8],
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-14",
    name: "catorceavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 3", "tag 12", "tag 2"],
    comments: commentsList,
    categories: [
      categoryList[10],
      categoryList[11],
      categoryList[12],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-15",
    name: "quinceavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 3", "tag 12", "tag 2"],
    comments: commentsList,
    categories: [
      categoryList[13],
      categoryList[14],
      categoryList[11],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-16",
    name: "dieciseisavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[1],
      categoryList[2],
      categoryList[3],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-16",
    name: "dieciseisavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 1", "tag 2", "tag 3"],
    comments: commentsList,
    categories: [
      categoryList[1],
      categoryList[2],
      categoryList[3],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-17",
    name: "diecicieteavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 2", "tag 8", "tag 9"],
    comments: commentsList,
    categories: [
      categoryList[4],
      categoryList[5],
      categoryList[6],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-18",
    name: "dieciochoavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 11", "tag 12", "tag 14"],
    comments: commentsList,
    categories: [
      categoryList[7],
      categoryList[8],
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-19",
    name: "diecinueveavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 11", "tag 12", "tag 14"],
    comments: commentsList,
    categories: [
      categoryList[7],
      categoryList[8],
      categoryList[9],
    ],
    promotion: false,
    amount: 1,
  ),
  ProductsInterface(
    id: "product-20",
    name: "veinteavo producto con texto largo",
    shortDescription: "Producto con rating alto",
    longDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus nec imperdiet libero. Etiam vehicula luctus dui a malesuada. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi egestas laoreet est non lacinia. ",
    image: "images/base-product.png",
    rating: 5,
    tagsMenu: ["tag 11", "tag 12", "tag 14"],
    comments: commentsList,
    categories: [
      categoryList[10],
      categoryList[11],
      categoryList[12],
    ],
    promotion: false,
    amount: 1,
  ),
];
