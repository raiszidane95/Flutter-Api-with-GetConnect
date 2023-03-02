import 'package:get/get.dart';

class UserProvider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=30");
    if (response.status.hasError) {
      return Future.error(response.statusText as Object);
    } else {
      return response.body['results'];
    }
  }
}
