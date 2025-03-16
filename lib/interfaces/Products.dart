import 'package:shar/interfaces/Category.dart';
import 'package:shar/interfaces/Comments.dart';

class Products {
  final String? id;
  final String? name;
  final String? shortDescription;
  final String? longDescription;
  final String? image;
  final int? rating;
  final List<Comments>? comments;
  final List<String>? categories;
  final List<Category>? tagsMenu;

  Products({
    this.id,
    this.name,
    this.shortDescription,
    this.longDescription,
    this.image,
    this.rating,
    this.tagsMenu,
    this.comments,
    this.categories,
  });
}
