import 'package:shar/interfaces/CategoryInterface.dart';
import 'package:shar/interfaces/CommentsInterface.dart';

class ProductsInterface {
  final String id;
  final String name;
  final String shortDescription;
  final String longDescription;
  final String image;
  final int rating;
  final List<CommentsInterface> comments;
  final List<CategoryInterface> categories;
  final List<String> tagsMenu;
  final bool promotion;
  double amount;

  ProductsInterface({
    required this.id,
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.image,
    required this.rating,
    required this.tagsMenu,
    required this.comments,
    required this.categories,
    required this.promotion,
    required this.amount,
  });
}
