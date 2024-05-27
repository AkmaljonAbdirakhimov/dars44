import 'dart:convert';

import 'package:dars44/models/address.dart';
import 'package:dars44/models/user.dart';

class UsersController {
  late User user;
  String json = '''{
        "id": 1,
        "email": "samaultman@gmail.com",
        "first_name": "Sam", 
        "last_name": "Aultman",
        "avatar": "https://reqres.in/img/faces/1-image.jpg",
        "age": 30, 
        "address": {
          "city": "Tashkent", 
          "street": "Amir Temur"
        }
      }
    ''';

  void getUser() {
    final mapData = jsonDecode(json);
    user = User.fromJson(mapData);
  }

  void sendNewUserToInternet() {
    Map<String, dynamic> mapData = user.toJson();
    String jsonFormat = jsonEncode(mapData);
    // http.post("url", body: jsonFormat);
  }

}
