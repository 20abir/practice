import 'package:http/http.dart';
import 'users.dart';

class Service {
  static const String url = 'http://jsonplaceholder.typicode.com/users';

  static Future<List<User>?> getUsers() async {
    try {
      final response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<User> users = usersFromJson(response.body);
        return users;
      }
      return List<User>.empty();
    } catch (e) {
      // ignore: deprecated_member_use
      return List<User>.empty();
    }
  }
}
