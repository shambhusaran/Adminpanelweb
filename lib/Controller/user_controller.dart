import 'package:web_admin_panel/Repository/user_repository.dart';

import 'package:flutter/cupertino.dart';
import 'package:web_admin_panel/model/user.dart';

class UserController extends ChangeNotifier{


  //String _userName="";
  // String getUserr(String id){
  //   getUser(id);
  //
  //   return _id;
  // }
 //
 // String? getUser(String id) {
 //    Future<User> usr =(UserRepository.fetchUser(id))!;
 //
 //    usr.then((string){
 //     // username = string!.name;
 //      //print(string.name);
 //      return username;
 //
 //    });
 //
 //
 //
 //
 //
 //
 //  }


  String username="sfdgsdffgs";

   Future<String> getUser(String id) async {

   User usr =  (await UserRepository.fetchUser(id))!;
   username = usr.name;
    return username;


  }


  // Future<String> getUser(String id)async {
  //   User? usr = await UserRepository.fetchUser(id);
  //   return usr!.name;
  // }

}