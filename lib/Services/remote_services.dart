import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:web_admin_panel/model/order_item.dart';
import 'package:web_admin_panel/model/order_json.dart';
import '../model/user.dart';

class RemoteServices {
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
        if(a==0){
          print(list.length);
        }
        if (list[a].status == "delivered" ) {
          var response = await client.get(
              Uri.parse(url + list[a].invoice));
          if (response.statusCode == 200) {
            var jsonString = json.decode(response.body);
            //print(jsonString);
            OrderItem ordersItem = OrderItem.fromJson(jsonString);
            orderItemList.add(ordersItem.data.order);
            //print(ordersItem.data.order.sId);
          }
          else{
            print("Error fetching order ITem data from API");
          }
        }
      }
      return orderItemList;
    }
    else{
      print("Error fetching orderList data from API");
    }

//
//     //print(json.decode(jsonString));
//     for(int i = 0; i< ordersJson.data.orders.length; i++) {
//       // if(i ==0){
//       //   print(ordersJson.data.orders.length);
//       // }
//         //print("contains in invoice Num"+ordersJson.data.orders[i].invoice);
//         if (ordersJson.data.orders[i].status == "delivered") {
//           invoiceNum.add(ordersJson.data.orders[i].invoice);
//           var response = await client.get(
//               Uri.parse(url + ordersJson.data.orders[i].invoice));
//           if (response.statusCode == 200) {
//             var jsonString = json.decode(response.body);
//             OrderItem ordersItem = OrderItem.fromJson(jsonString);
//             orderItemList.add(ordersItem.data.order);
//             //print(ordersItem.data.order.sId);
//           }
//           else {
//             print("Error occured accessing the ORderItems apI");
//           }
//         }else{
//         print(ordersJson.data.orders[i].invoice+"'s Status is not delivered");
//         }
//     }
//     for(int j = 0; j<orderItemList.length; j++){
//       print(orderItemList[j].invoice);
//     }
//     return orderItemList;
//
//     // return  orderLists;
//   }
//   else{
//     print("Error OCcured while accessing the Orders API");
//   }
//
// }
//
//  void fetchOrders()async{
//   //List<Orders> orderLists=[];
//   var response = await client.get(Uri.parse(url));
//   if (response.statusCode == 200){
//     var jsonString = json.decode(response.body);
//     OrdersJson  ordersJson = OrdersJson.fromJson(jsonString);
//
//     //print(json.decode(jsonString));
//     for(int i = 0; i< ordersJson.data.orders.length; i++){
//       orderList.add(ordersJson.data.orders[i]);
//     }
//
//     // return  orderLists;
//   }
//   else{
//     print("Error OCcured while accessing the Orders API");
//   }
// }
//
//     Future<List<User>?> fetchUsers() async {
//       var response = await client.get(Uri.parse(userUrl));
//       if (response.statusCode == 200) {
//         var jsonString = response.body;
//         print("3");
//         return userFromJson(jsonString);
//       }
//       else {
//         print("Error OCcured while accessing the User API");
//       }
//     }
  }


//
// static Future<List<OrderClass>?>  fetchOrderItems()async{
// var response1 = await client.get(Uri.parse(url));
// List<OrderClass> orderItemList =[]  ;
// if (response1.statusCode == 200){
// var jsonString1 = json.decode(response1.body);
// OrdersJson  ordersJson = OrdersJson.fromJson(jsonString1);
//
// //print(json.decode(jsonString));
// for(int i = 0; i< ordersJson.data.orders.length; i++) {
// if(i ==0){
// print(ordersJson.data.orders.length);
// }
// if( (invoiceNum.contains(ordersJson.data.orders[i].invoice))== false ){
// //print("contains in invoice Num"+ordersJson.data.orders[i].invoice);
// if (ordersJson.data.orders[i].status == "delivered") {
// invoiceNum.add(ordersJson.data.orders[i].invoice);
// var response = await client.get(
// Uri.parse(url + ordersJson.data.orders[i].invoice));
// if (response.statusCode == 200) {
// var jsonString = json.decode(response.body);
// OrderItem ordersItem = OrderItem.fromJson(jsonString);
// orderItemList.add(ordersItem.data.order);
// //print(ordersItem.data.order.sId);
// }
// else {
// print("Error occured accessing the ORderItems apI");
// }
// }else{
// print(ordersJson.data.orders[i].invoice+"'s Status is not delivered");
// }
// }
// else {
// print("contains in invoice Num"+ordersJson.data.orders[i].invoice);
//
// }
// }
// for(int j = 0; j<orderItemList.length; j++){
// print(orderItemList[j].invoice);
// }
// return orderItemList;
//
// // return  orderLists;
// }
// else{
// print("Error OCcured while accessing the Orders API");
// }
//
// }
}