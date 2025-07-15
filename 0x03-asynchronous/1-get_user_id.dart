import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  final data = await fetchUserData();
  final Map<String, dynamic> userMap = jsonDecode(data);
  return userMap['id'];
}
