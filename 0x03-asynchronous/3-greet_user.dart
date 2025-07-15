import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final data = await fetchUserData();
    final user = jsonDecode(data);
    return 'Hello ${user['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool result = await checkCredentials();
    print('There is a user: $result');

    if (result) {
      return await greetUser();
    } else {
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
