

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web_admin_panel/model/user.dart';

class UserRepository{

  static var client = http.Client();
  static String url = "https://api.khajaghar.ml/api/dalle/users/";
  static Future<User?> fetchUser(String id) async {
    var response1 = await client.get(Uri.parse(url+id));
    if (response1.statusCode == 200) {
      var jsonString1 = json.decode(response1.body);
      print(jsonString1);
      UserItem usr = UserItem.fromJson(jsonString1);

      return usr.data.user;
    }
    else{
      print("Error accessing the user API");
    }


  }
}