class UserInterface {
  final int id;
  final String fullName;
  final String email;
  final String password;
  final bool logged;

  UserInterface({
    required this.id,
    required this.fullName,
    required this.email,
    required this.password,
    required this.logged,
  });

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'name': fullName,
      'email': email,
      'password': password,
      'logged': logged,
    };
  }

  @override
  String toString() {
    return 'User {id: $id, name: $fullName, email: $email, logged: $logged}';
  }
}
