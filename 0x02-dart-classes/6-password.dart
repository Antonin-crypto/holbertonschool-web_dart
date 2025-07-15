class Password {
   String _password = "";

  Password({required String password}) {
    _password = password;
  }

  // Getter
  String get password => _password;

  // Setter
  set password(String value) {
    _password = value;
  }

  bool isValid() {
    final hasUppercase = _password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = _password.contains(RegExp(r'[a-z]'));
    final hasNumber = _password.contains(RegExp(r'\d'));
    final lengthOk = _password.length >= 8 && _password.length <= 16;

    return hasUppercase && hasLowercase && hasNumber && lengthOk;
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}


class User {
  int id;
  String name;
  int age;
  double height;
  String? user_password;


  User({required this.id , required this.name, required this.age, required this.height});

  bool isPasswordValid() {
    Password pwd = Password(password: user_password ?? "");
    return pwd.isValid();
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: userJson['user_password'],
    );
  }

  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${isPasswordValid()})';
  }
}
