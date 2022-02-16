import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:provider/provider.dart';
import 'package:web_admin_panel/model/order_objects.dart';

import '../model/item1.dart';
import '../model/order1.dart';

// final List<Order> orderss = [
//   Order(
//       invoiceNumber: 1001,
//       cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "10:02 AM",
//       itemList: [
//         Item(itemName: "Apple Pie", status: "completed", quantity: 2, type: "Desserts"
//         ),
//         Item(itemName: "Cheese Burger", status: "not completed", quantity: 3 , type:"Appetizer"),
//         Item(
//             itemName: "Chicken Mo:Mo",
//             status: "not completed",
//             quantity: 2,
//             type: "Mo:Mo",
//             request: ["(Mo:Mo) 4 pices","Chutni"
//
//
//             ],
//             // request: [
//             //   Requests(request:"(Mo:Mo) 4 pices"),
//             //   Requests(request:"Chutni"),
//             //
//             //
//             // ],
//             request1: "(Mo:Mo) 4 pices",
//             request2: "Chutni"),
//       ],
//       orderStatus: "New"),
//   Order(
//       invoiceNumber: 1003,
//       cookingAdvice: "Make sure the buff chilly is sipicy and tangy. ",
//       orderTime: "02:02 AM",
//       itemList: [
//         Item(itemName: "Cheese Ball", status: "not completed", quantity: 2,  type:"Snacks"),
//         Item(
//
//             itemName: "Veg Pizza",
//             status: "not completed",
//             quantity: 1,
//             type:"Snacks",
//             request: [
//               "Extra toppings",
//               "Extra cheese"
//             ],
//             // request: [
//             //   Requests(request:"Extra toppings"),
//             //   Requests(request:"Extra cheese") ,
//             // ],
//             request1: "Extra toppings",
//             request2: "Extra cheese"),
//         Item(itemName: "Buff Chilly", status: "not completed", quantity: 2, type: "Snacks"),
//       ],
//       orderStatus: "Delivering"),
//   Order(
//       invoiceNumber: 1002,
//       orderTime: "11:02 AM",
//       itemList: [
//         Item(itemName: "French Fries", status: "no completed", quantity: 1, type: "Appetizer"),
//         Item(itemName: "Buff Mo:Mo", status: "not completed", quantity: 2, type: "Mo:Mo"),
//         Item(
//             type: "Snacks",
//             itemName: "Mixed Pizza",
//             status: "not completed",
//             quantity: 1,
//             request: [
//               "Extra toppings","Extra cheese"
//
//             ],
//             // request: [
//             //   Requests(request:"Extra toppings"),
//             //   Requests(request:"Extra cheese"),
//             //
//             // ],
//             request1: "Extra toppings",
//             request2: "Extra cheese"),
//         Item(itemName: "Buff Chilly", status: "not completed", quantity: 2, type: "Snacks"),
//         Item(itemName: "Black Forest", status: "not completed", quantity: 1, type: "Desserts"),
//         Item(itemName: "Cheese Ball", status: "not completed", quantity: 2, type: "Snacks"),
//       ],
//       orderStatus: "New"),
//   Order(
//       invoiceNumber: 1004,
//       orderTime: "3:02 AM",
//       itemList: [
//         Item(itemName: "French Fries", status: "no completed", quantity: 1, type: "Appetizer"),
//         Item(itemName: "Apple Pie", status: "completed", quantity: 2, type: "Desserts"),
//         Item(itemName: "Cheese Burger", status: "not completed", quantity: 3, type: "Appetizer"),
//         Item(
//             itemName: "Chicken Mo:Mo",
//             status: "not completed",
//             quantity: 2,
//             type: "Mo:Mo",
//             request: ["(Mo:Mo) 4 pices","Chutni"
//
//
//             ],
//             // request: [
//             //   Requests(request:"(Mo:Mo) 4 pices"),
//             //   Requests(request:"Chutni"),
//             //
//             //
//             // ],
//             request1: "(Mo:Mo) 4 pices",
//             request2: "Chutni"),
//         Item(
//             itemName: "Pineapple Pizza",
//             status: "completed",
//             quantity: 1,
//             type: "Snacks",
//             request: [
//               "Extra toppings","Extra cheese"],
//             // request: [
//             //   Requests(request:"Extra toppings"),
//             //   Requests(request:"Extra cheese"),
//             // ],
//             request1: "Extra toppings",
//             request2: "Extra cheese"),
//       ],
//       orderStatus: "Delivering"),
//   Order(
//       invoiceNumber: 1005,
//       cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "11:02 PM",
//       itemList: [
//         Item(itemName: "Cheese Burger", status: "not completed", quantity: 1, type: "Appetizer"),
//         Item(
//             itemName: "Chicken Mo:Mo",
//             status: "not completed",
//             quantity: 1,
//             type: "Mo:Mo",
//             request: ["(Mo:Mo) 4 pices",
//               "Chutni",
//
//             ],
//             // request: [
//             //  Requests(request: "(Mo:Mo) 4 pices"),
//             //   Requests(request: "Chutni"),
//             //
//             // ],
//             request1: "(Mo:Mo) 4 pices",
//             request2: "Chutni"),
//         Item(itemName: "Chicken Sizzeler", status: "Not completed", quantity: 1, type: "Appetizer")
//       ],
//       orderStatus: "Delivering"),
//   Order(
//       invoiceNumber: 1006,
//       // cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "12:02 PM",
//       itemList: [
//         Item(itemName: "Cheese Burger", status: "not completed", quantity: 1, type: "Appetizer"),
//         Item(
//             itemName: "Chicken Mo:Mo",
//             status: "not completed",
//             quantity: 1,
//             type: "Mo:Mo",
//             request: [
//               "(Mo:Mo) 4 pices","Chutni"
//
//             ],
//             // request: [
//             //   Requests(request: "(Mo:Mo) 4 pices"),
//             //   Requests(request: "Chutni"),
//             //
//             // ],
//             request1: "(Mo:Mo) 4 pices",
//             request2: "Chutni"),
//         Item(itemName: "Chicken Sizzeler", status: "Not completed", quantity: 1, type: "Appetizer")
//       ],
//       orderStatus: "New"),
//   Order(
//       invoiceNumber: 1007,
//       // cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "04:02 PM",
//       itemList: [
//         Item(itemName: "Cheese Burger", status: "completed", quantity: 1, type: "Appetizer"),
//         Item(
//             itemName: "Chicken chowmein",
//             status: "not completed",
//             quantity: 1,
//             type: "Appetizer",
//             request: [
//               "(Mo:Mo) 4 pices", "Chutni"
//
//             ],
//             // request: [
//             //   Requests(request: "(Mo:Mo) 4 pices"),
//             //   Requests(request: "Chutni"),
//             //
//             // ],
//             request1: "(Mo:Mo) 4 pices",
//             request2: "Chutni"),
//         Item(itemName: "Chicken Sizzeler", status: "Not completed", quantity: 1, type: "Appetizer")
//       ],
//       orderStatus: "New"),
// ];


class OrderListProvider extends ChangeNotifier {


  bool _isCompleted = false;
  Color recieptColor = const Color(0xFFC2403C);
  final List<Order> orders = [
    Order(
        invoiceNumber: 1001,
        cookingAdvice: "Please use less oil and chilly. ",
        orderTime: "10:02 AM",
        date: "26 JAN",
        contact: 7894587984,
        assignedTo: "Iron Man",
        customerName: "Sanzit Adhikari",
        total: 3000,
        paymentMethod: "Esewa",
        itemList: [
          Item(itemName: "Apple Pie",
              status: "completed",
              quantity: 2,
              type: "Desserts"
          ),
          Item(itemName: "Cheese Burger",
              status: "not completed",
              quantity: 3,
              type: "Appetizer"),
          Item(
              itemName: "Chicken Mo:Mo",
              status: "not completed",
              quantity: 2,
              type: "Mo:Mo",
              request: ["(Mo:Mo) 4 pices", "Chutni"


              ],
              // request: [
              //   Requests(request:"(Mo:Mo) 4 pices"),
              //   Requests(request:"Chutni"),
              //
              //
              // ],
              request1: "(Mo:Mo) 4 pices",
              request2: "Chutni"),
        ],
        orderStatus: "New"),
    Order(
        invoiceNumber: 1003,
        cookingAdvice: "Make sure the buff chilly is sipicy and tangy. ",
        orderTime: "02:02 AM",
        date: "25 JAN",
        contact: 8465123458,
        assignedTo: "Dr Strange",
        customerName: "Golden Shrestha",
        total: 2500,
        paymentMethod: "Khalti",
        itemList: [
          Item(itemName: "Cheese Ball",
              status: "not completed",
              quantity: 2,
              type: "Snacks"),
          Item(

              itemName: "Veg Pizza",
              status: "not completed",
              quantity: 1,
              type: "Snacks",
              request: [
                "Extra toppings",
                "Extra cheese"
              ],
              // request: [
              //   Requests(request:"Extra toppings"),
              //   Requests(request:"Extra cheese") ,
              // ],
              request1: "Extra toppings",
              request2: "Extra cheese"),
          Item(itemName: "Buff Chilly",
              status: "not completed",
              quantity: 2,
              type: "Snacks"),
        ],
        orderStatus: "New"),
    Order(
        invoiceNumber: 1002,
        orderTime: "11:02 AM",
        date: "26 JAN",
        contact: 8945632145,
        assignedTo: "Madhan Bahadur",
        customerName: "Roshan Khatri",
        total: 1200,
        paymentMethod: "P.O.D",
        itemList: [
          Item(itemName: "French Fries",
              status: "no completed",
              quantity: 1,
              type: "Appetizer"),
          Item(itemName: "Buff Mo:Mo",
              status: "not completed",
              quantity: 2,
              type: "Mo:Mo"),
          Item(
              type: "Snacks",
              itemName: "Mixed Pizza",
              status: "not completed",
              quantity: 1,
              request: [
                "Extra toppings", "Extra cheese"

              ],
              // request: [
              //   Requests(request:"Extra toppings"),
              //   Requests(request:"Extra cheese"),
              //
              // ],
              request1: "Extra toppings",
              request2: "Extra cheese"),
          Item(itemName: "Buff Chilly",
              status: "not completed",
              quantity: 2,
              type: "Snacks"),
          Item(itemName: "Black Forest",
              status: "not completed",
              quantity: 1,
              type: "Desserts"),
          Item(itemName: "Cheese Ball",
              status: "not completed",
              quantity: 2,
              type: "Snacks"),
        ],
        orderStatus: "New"),
    Order(
        invoiceNumber: 1004,
        orderTime: "03:02 AM",
        date: "26 JAN",
        contact: 4561234567,
        assignedTo: "Spider Man",
        customerName: "Adish Shrestha",
        total: 450,
        paymentMethod: "Esewa",
        itemList: [
          Item(itemName: "French Fries",
              status: "no completed",
              quantity: 1,
              type: "Appetizer"),
          Item(itemName: "Apple Pie",
              status: "completed",
              quantity: 2,
              type: "Desserts"),
          Item(itemName: "Cheese Burger",
              status: "not completed",
              quantity: 3,
              type: "Appetizer"),
          Item(
              itemName: "Chicken Mo:Mo",
              status: "not completed",
              quantity: 2,
              type: "Mo:Mo",
              request: ["(Mo:Mo) 4 pices", "Chutni"


              ],
              // request: [
              //   Requests(request:"(Mo:Mo) 4 pices"),
              //   Requests(request:"Chutni"),
              //
              //
              // ],
              request1: "(Mo:Mo) 4 pices",
              request2: "Chutni"),
          Item(
              itemName: "Pineapple Pizza",
              status: "completed",
              quantity: 1,
              type: "Snacks",
              request: [
                "Extra toppings", "Extra cheese"],
              // request: [
              //   Requests(request:"Extra toppings"),
              //   Requests(request:"Extra cheese"),
              // ],
              request1: "Extra toppings",
              request2: "Extra cheese"),
        ],
        orderStatus: "New"),
    Order(
        invoiceNumber: 1005,
        cookingAdvice: "Please use less oil and chilly. ",
        orderTime: "11:02 PM",
        date: "26 JAN",
        contact: 1235469823,
        assignedTo: "Hari Bahadur",
        customerName: "Rajan Paudel",
        total: 4550,
        paymentMethod: "Khalti",
        itemList: [
          Item(itemName: "Cheese Burger",
              status: "not completed",
              quantity: 1,
              type: "Appetizer"),
          Item(
              itemName: "Chicken Mo:Mo",
              status: "not completed",
              quantity: 1,
              type: "Mo:Mo",
              request: ["(Mo:Mo) 4 pices",
                "Chutni",

              ],
              // request: [
              //  Requests(request: "(Mo:Mo) 4 pices"),
              //   Requests(request: "Chutni"),
              //
              // ],
              request1: "(Mo:Mo) 4 pices",
              request2: "Chutni"),
          Item(itemName: "Chicken Sizzeler",
              status: "Not completed",
              quantity: 1,
              type: "Appetizer")
        ],
        orderStatus: "New"),
    Order(
        invoiceNumber: 1006,
        // cookingAdvice: "Please use less oil and chilly. ",
        orderTime: "12:02 PM",
        date: "26 JAN",
        contact: 1234325654,
        assignedTo: "Shyam Bahadur",
        customerName: "Kushal Gurung",
        total: 3000,
        paymentMethod: "Esewa",
        itemList: [
          Item(itemName: "Cheese Burger",
              status: "not completed",
              quantity: 1,
              type: "Appetizer"),
          Item(
              itemName: "Chicken Mo:Mo",
              status: "not completed",
              quantity: 1,
              type: "Mo:Mo",
              request: [
                "(Mo:Mo) 4 pices", "Chutni"

              ],
              // request: [
              //   Requests(request: "(Mo:Mo) 4 pices"),
              //   Requests(request: "Chutni"),
              //
              // ],
              request1: "(Mo:Mo) 4 pices",
              request2: "Chutni"),
          Item(itemName: "Chicken Sizzeler",
              status: "Not completed",
              quantity: 1,
              type: "Appetizer")
        ],
        orderStatus: "New"),

    Order(
        invoiceNumber: 1007,
        // cookingAdvice: "Please use less oil and chilly. ",
        orderTime: "04:02 PM",
        date: "26 JAN",
        customerName: "Shambhusaran Parajuli",
        contact: 1234567654,
        total: 1000,
        assignedTo: "Ram Bahadur",
        paymentMethod: "fonepay",
        itemList: [
          Item(itemName: "Cheese Burger",
              status: "completed",
              quantity: 1,
              type: "Appetizer"),
          Item(
              itemName: "Chicken chowmein",
              status: "not completed",
              quantity: 1,
              type: "Appetizer",
              request: [
                "(Mo:Mo) 4 pices", "Chutni"

              ],
              // request: [
              //   Requests(request: "(Mo:Mo) 4 pices"),
              //   Requests(request: "Chutni"),
              //
              // ],
              request1: "(Mo:Mo) 4 pices",
              request2: "Chutni"),
          Item(itemName: "Chicken Sizzeler",
              status: "Not completed",
              quantity: 1,
              type: "Appetizer")
        ],
        orderStatus: "New"),
  ];

  bool get isCompleted {
    return _isCompleted;
  }

  String? getStatus(int invoiceNum, String item) {
    for (int i = 0; i < orders.length; i++) {
      if (invoiceNum == orders[i].invoiceNumber) {
        for (int j = 0; j < orders[i].itemList.length; j++) {
          if (orders[i].itemList[j].itemName == item) {
            return orders[i].itemList[j].status;
          }
        }
      }
    }
  }

  String? getOrderStatus(int invoceNo){
    for(int i = 0; i<orders.length; i++){

      if(invoceNo == orders[i].invoiceNumber){

        if(orders[i].orderStatus =="New"){
          return "New";
        }
        else{
          return "Delivering";
        }

      }

    }
  }


  void changeItemStatus(int invoiceNum, String item) {
    for (int i = 0; i < orders.length; i++) {
      if (invoiceNum == orders[i].invoiceNumber) {
        for (int j = 0; j < orders[i].itemList.length; j++) {
          if (orders[i].itemList[j].itemName == item) {
            if (orders[i].itemList[j].status == "completed") {
              print('1');
              print(orders[i].itemList[j].status);
              orders[i].itemList[j].status = "not completed";
              print('2');
              _isCompleted = false;
              checkOrderCompleted(invoiceNum);
              notifyListeners();
            }
            else {
              print('3');
              orders[i].itemList[j].status = "completed";
              print('4');
              _isCompleted = true;
              checkOrderCompleted(invoiceNum);
              notifyListeners();
            }
            print(orders[i].itemList[j].status);
          }
        }
      }
    }
  }

  void checkOrderCompleted(int invoiceNo) {
    print("Checks Order status completed or not ");
    int count = 0;
    int itemCount = 0;
    for (int i = 0; i < orders.length; i++) {
      if (invoiceNo == orders[i].invoiceNumber) {
        itemCount = orders[i].itemList.length;
        print("Item count" + orders[i].itemList.length.toString());

        for (int j = 0; j < orders[i].itemList.length; j++) {
          print("asdfasdfA+ " + orders[i].itemList[j].status);
          if (orders[i].itemList[j].status == "completed") {
            count ++;
            print("count=" + count.toString());
          }
        }
      }
    }
    if (count == itemCount) {
      print("This code was run");
      for (int i = 0; i < orders.length; i++) {
        if (orders[i].invoiceNumber == invoiceNo) {
          orders[i].orderStatus = "Delivering";
          checkColorBoxForOrder(invoiceNo);
        }
      }
    }
    else {
      for (int i = 0; i < orders.length; i++) {
        if (orders[i].invoiceNumber == invoiceNo) {
          orders[i].orderStatus = "New";
          checkColorBoxForOrder(invoiceNo);
        }
      }
    }
    // checkColorBoxForOrder(invoiceNo);
    notifyListeners();
  }

  void checkColorBoxForOrder(int invoiceNo) {
    for (int i = 0; i < orders.length; i++) {
      if (orders[i].invoiceNumber == invoiceNo) {
        if (orders[i].orderStatus == "Delivering") {
          recieptColor = const Color(0xFFD47105);
          notifyListeners();
        }
        else {
          recieptColor = const Color(0xFFC2403C);
          notifyListeners();
        }
      }
    }
  }


  Map<String, int>? calculateItemAndNumbers({ required String type}) {
    //Map<String, int> itemCount= Map();
    Map<String, int> appetizerItemCount = Map();
    Map<String, int> snacksItemCount = Map();
    Map<String, int> momoItemCount = Map();
    Map<String, int> dessertsItemCount = Map();


    for (int i = 0; i < orders.length; i++) {
      for (int j = 0; j < orders[i].itemList.length; j++) {
        if (orders[i].itemList[j].type == "Appetizer") {
          if (appetizerItemCount.containsKey(orders[i].itemList[j].itemName)) {
            appetizerItemCount.update(
                orders[i].itemList[j].itemName, (value) => value +
                orders[i].itemList[j].quantity);
          }
          else {
            appetizerItemCount[orders[i].itemList[j].itemName] =
                orders[i].itemList[j].quantity;
          }
        }
        else if (orders[i].itemList[j].type == "Desserts") {
          if (dessertsItemCount.containsKey(orders[i].itemList[j].itemName)) {
            dessertsItemCount.update(
                orders[i].itemList[j].itemName, (value) => value +
                orders[i].itemList[j].quantity);
          }
          else {
            dessertsItemCount[orders[i].itemList[j].itemName] =
                orders[i].itemList[j].quantity;
          }
        }
        else if (orders[i].itemList[j].type == "Snacks") {
          if (snacksItemCount.containsKey(orders[i].itemList[j].itemName)) {
            snacksItemCount.update(
                orders[i].itemList[j].itemName, (value) => value +
                orders[i].itemList[j].quantity);
          }
          else {
            snacksItemCount[orders[i].itemList[j].itemName] =
                orders[i].itemList[j].quantity;
          }
        }
        else if (orders[i].itemList[j].type == "Mo:Mo") {
          if (momoItemCount.containsKey(orders[i].itemList[j].itemName)) {
            momoItemCount.update(
                orders[i].itemList[j].itemName, (value) => value +
                orders[i].itemList[j].quantity);
          }
          else {
            momoItemCount[orders[i].itemList[j].itemName] =
                orders[i].itemList[j].quantity;
          }
        }
      }
    }

//itemCount.forEach((key, value)=>print("This $key has this $value"));
    if (type == "Appetizer") {
      return appetizerItemCount;
    }
    if (type == "Snacks") {
      return snacksItemCount;
    }
    if (type == "Desserts") {
      return dessertsItemCount;
    }
    if (type == "Mo:Mo") {
      return momoItemCount;
    }
  }


  void markOrderCompleted(int invoiceNo) {
    for (int i = 0; i < orders.length; i++) {
      if (invoiceNo == orders[i].invoiceNumber) {
       // itemCount = orders[i].itemList.length;
        //print("Item count" + orders[i].itemList.length.toString());

        for (int j = 0; j < orders[i].itemList.length; j++) {
          //print("asdfasdfA+ " + orders[i].itemList[j].status);
          if (orders[i].itemList[j].status == "not completed") {
            orders[i].itemList[j].status= "completed";
          }
          else{
            orders[i].itemList[j].status= "not  completed";

          }
        }
      }
      notifyListeners();
      checkOrderCompleted(invoiceNo);
    }
  }


  Color? returnColor(String paymentType){


    if(paymentType =="Khalti"){
      return Colors.purple;

    }
    else if(paymentType =="Esewa"){
      return Colors.green;

    }
    else if(paymentType =="fonepay"){
      return Colors.redAccent;
    }
    else{
      return Colors.grey;

    }


  }

}


