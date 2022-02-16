import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:web_admin_panel/model/order_item.dart';
import 'package:web_admin_panel/model/order_json.dart';
import '../model/user.dart';

class OrderListRepository {
  static var client = http.Client();
  static String url = "https://api.khajaghar.ml/api/dalle/orders/";
  static String userUrl = "https://api.khajaghar.ml/api/dalle/users";
  List<Orders> orderList = [];

  static List<String>invoiceNum = [];


  static Future<List<OrderClass>?> fetchOrderItems() async {
    var response1 = await client.get(Uri.parse(url));
    List<OrderClass> orderItemList = [];
    if (response1.statusCode == 200) {
      var jsonString1 = json.decode(response1.body);
      OrdersJson ordersJson = OrdersJson.fromJson(jsonString1);
      List<Orders> list = ordersJson.data.orders;


      for (int a = 0; a < list.length; a++) {
        if (a == 0) {
          print(list.length);
        }
        if (list[a].status == "delivered") {
          var response = await client.get(
              Uri.parse(url + list[a].invoice));
          if (response.statusCode == 200) {
            var jsonString = json.decode(response.body);
            //print(jsonString);
            OrderItem ordersItem = OrderItem.fromJson(jsonString);
            orderItemList.add(ordersItem.data.order);
            //print(ordersItem.data.order.sId);
          }
          else {
            print("Error fetching order ITem data from API");
          }
        }
      }
      return orderItemList;
    }
    else {
      print("Error fetching orderList data from API");
    }

    //
    // Future<List<User>?> fetchUsers() async {
    //   var response = await client.get(Uri.parse(userUrl));
    //   if (response.statusCode == 200) {
    //     var jsonString = response.body;
    //     print("3");
    //     return userFromJson(jsonString);
    //   }
    //   else {
    //     print("Error OCcured while accessing the User API");
    //   }
    // }
  }

}
