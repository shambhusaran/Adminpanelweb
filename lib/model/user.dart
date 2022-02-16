
import 'dart:convert';

//List<User> userFromJson(String str)=>List<User>.from(json.decode(str).map((x)=> User.fromJson(x)));
//String userToJson(List<User> data )=>json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));
class UserItem {
  UserItem({
    required this.status,
    required this.data,
  });

  final String status;
  final Data data;

  factory UserItem.fromJson(Map<String, dynamic> json) => UserItem(

    status: json["status"].toString(),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.user,
  });

  User user;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
  };
}

class User {
  final String name;
  final String phone;
  final String sId;
  final String email;
  final bool emailVerified;
  final String role;
  final List<dynamic> permissions;
  final List<dynamic> favourites;
   String? deliveryAddress;

  User({
    required this.name,
    required this.phone,
    required this.sId,
    required this.email,
    required this.emailVerified,
    required this.role,
    required this.permissions,
    required this.favourites,
    this.deliveryAddress,
  });


  factory User.fromJson(Map<String, dynamic> json) =>
      User(
          name: json['name'],
          phone: json['phone'],
          sId: json['_id'],
          email: json['email'],
          emailVerified: json['emailVerified'],
          role: json['role'],
          permissions: json['permissions'],
          favourites: json['favourites'],
          deliveryAddress: json['deliveryAddress']!,

      );

  Map<String, dynamic> toJson() =>
      {

        "name": name,
        "phone": phone,
        "_id": sId,
        "email": email,
        "emailVerified": email,
        "role": role,
        "permissions": permissions,
        "favourites": favourites,
        "deliveryAddress": deliveryAddress,
      };
  @override
  String toString(){
    return '{name:$name, phone:$phone}';
  }
}
