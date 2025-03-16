
class CommentsInterface {
  final String id;
  final String name;
  final String img;
  final String date;
  final String comment;
  final int rating;

  CommentsInterface({
    required this.id,
    required this.name,
    required this.img,
    required this.date,
    required this.comment,
    required this.rating,
  });
}
