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
  final UserInterface? user;

  UserInitial({
    this.user,
  });

  @override
  List<Object> get props => [user!];

  @override
  String toString() => 'UserInitial {props: User: $user';
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
      'UsersFetched {props: databaseRef: $database, user: $user }';
}

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(
          UserInitial(
            user: UserInterface(
              id: 0,
              name: "",
              email: "",
              password: "",
              logged: false,
            ),
          ),
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
        final db = await database;
        final List<Map<String, Object?>> userMaps = await db.query('user');
        var initialuser = UserInterface(
          id: 0,
          name: "",
          email: "",
          password: "",
          logged: false,
        );
        print("userMaps");
        print(userMaps);
        print("userMaps");
        if (userMaps.isNotEmpty) {
         for (final {
                'id': id as int,
                'name': name as String,
                'email': email as String,
                'password': password as String,
                'logged': logged as int,
              } in userMaps) {
            if (logged == 1) {
              initialuser = UserInterface(
                id: id,
                email: email,
                name: name,
                password: password,
                logged: logged == 1 ? true : false,
              );
            }
          }
        }
        print(initialuser);
        emit(
          UserFetched(
            database: database,
            user: initialuser,
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

        await db.update(
          'user',
          event.user!.toMap(),
          where: 'email = ?',
          whereArgs: [event.user!.email],
        );

        emit(
          UserFetched(
            database: database,
            user: event.user,
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
