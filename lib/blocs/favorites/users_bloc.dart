import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shar/interfaces/User.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class UserEvent {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class OpenDB extends UserEvent {
  OpenDB();
}

class AddUserToDB extends UserEvent {
  final UserInterface? user;
  AddUserToDB({this.user});
}

class FindUserOnLogin extends UserEvent {
  final UserInterface? user;
  FindUserOnLogin({this.user});
}

class RemoveUserFromDb extends UserEvent {
  final UserInterface? user;
  RemoveUserFromDb({this.user});
}

abstract class UserState {
  const UserState();

  @override
  List<Object> get props => [];
}

class UserInitial extends UserState {
  final List<UserInterface>? user;

  UserInitial({
    this.user,
  });

  @override
  List<Object> get props => [user!];

  @override
  String toString() => 'UserInitial {props: products: $user';
}

class UserFetched extends UserState {
  final Future<Database> database;
  final UserInterface? user;

  UserFetched({
    required this.database,
    required this.user,
  });

  @override
  List<Object> get props => [database, user!];

  @override
  String toString() =>
      'UsersFetched {props: databaseRef: $database, users: $user }';
}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(
          UserInitial(user: []),
        ) {
    on<OpenDB>(
      (event, emit) async {
        WidgetsFlutterBinding.ensureInitialized();
        final database = openDatabase(
          join(await getDatabasesPath(), 'shar_localuser.db'),
          onCreate: (db, version) {
            return db.execute(
              'CREATE TABLE user(id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT, logged BOOLEAN)',
            );
          },
          version: 1,
        );
        emit(
          UserFetched(
            database: database,
            user: UserInterface(
              id: 0,
              fullName: "",
              email: "",
              password: "",
              logged: false,
            ),
          ),
        );
      },
    );

    on<AddUserToDB>(
      (event, emit) async {
        Future<Database> database = state.props[0] as Future<Database>;
        final db = await database;

        await db.insert(
          'user',
          event.user!.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );

        final List<Map<String, Object?>> userMaps = await db.query('user');


        print("_______");
        print(event.user);
        print("_______");
        print(userMaps);
        print("_______");
        
        emit(
          UserFetched(
            database: database,
            user: event.user,
          ),
        );
      },
    );

    on<FindUserOnLogin>(
      (event, emit) async {
        Future<Database> database = state.props[0] as Future<Database>;
        final db = await database;
        final List<Map<String, Object?>> userMaps = await db.query('user');
        
       var userResult =
            userMaps.where((user) => user == event.user).toList() as UserInterface;

        emit(
          UserFetched(
            database: database,
            user: userResult,
          ),
        );
      },
    );

    on<RemoveUserFromDb>(
      (event, emit) {
        /*List<UserInterface> producsState =
            state.props[0] as List<ProductsInterface>;
        List<ProductsInterface> resfinal = List.from(producsState);
        if (producsState.contains(event.product)) {
          resfinal.remove(event.product);
        }
        emit(UserFetched(
          products: resfinal,
        ));*/
      },
    );
  }
}
