import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/CommentsInterface.dart';

abstract class CommentsEvent {
  const CommentsEvent();

  @override
  List<Object> get props => [];
}

class AddCommentToProduct extends CommentsEvent {
  final CommentsInterface comment;
  AddCommentToProduct({
    required this.comment,
  });
}

class CommentsByProduct extends CommentsEvent {
  final List<CommentsInterface> comments;
  CommentsByProduct({
    required this.comments,
  });
}

abstract class CommentState {
  const CommentState();

  @override
  List<Object> get props => [];
}

class CommentsInitial extends CommentState {
  final List<CommentsInterface> comments;

  CommentsInitial({
    required this.comments,
  });

  @override
  List<Object> get props => [comments];

  @override
  String toString() => 'CommentsFetched {props: products: $comments}';
}

class CommentsFetched extends CommentState {
  final List<CommentsInterface> comments;

  CommentsFetched({
    required this.comments,
  });

  @override
  List<Object> get props => [comments];

  @override
  String toString() => 'CommentsFetched {props: products: $comments}';
}

class CommentsBloc extends Bloc<CommentsEvent, CommentState> {
  CommentsBloc()
      : super(
          CommentsInitial(
            comments: [],
          ),
        ) {
    on<CommentsByProduct>(
      (event, emit) {
        emit(
          CommentsFetched(
            comments: event.comments,
          ),
        );
      },
    );

    on<AddCommentToProduct>(
      (event, emit) {
        List<CommentsInterface> commentState =
            state.props[0] as List<CommentsInterface>;
        List<CommentsInterface> resfinal = List.from(commentState);
        resfinal.insert(0, event.comment);
        emit(
          CommentsFetched(
            comments: resfinal,
          ),
        );
      },
    );
  }
}
