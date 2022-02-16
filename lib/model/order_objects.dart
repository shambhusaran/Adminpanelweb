import 'package:web_admin_panel/main.dart';
import 'package:web_admin_panel/model/item1.dart';
import 'package:web_admin_panel/model/requests.dart';
import '../Providers/order_list_provider.dart';
import 'package:provider/provider.dart';

import 'order1.dart';



// final List<Order> ordersList = [
//   Order(
//       invoiceNumber: 1001,
//       cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "10:02 AM",
//       customerName: "Shambhusaran Parajuli",
//       contact: 1234567654,
//       total: 1000,
//       assignedTo: "Ram Bahadur",
//       paymentMethod: "P.O.D",
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
//
//   Order(
//       invoiceNumber: 1003,
//       cookingAdvice: "Make sure the buff chilly is sipicy and tangy. ",
//       orderTime: "02:02 AM",
//       contact: 1234325654,
//       assignedTo: "Shyam Bahadur",
//       customerName: "Kushal Gurung",
//       total: 3000,
//       paymentMethod: "Esewa",
//       itemList: [
//         Item(itemName: "Cheese Ball", status: "not completed", quantity: 2,  type:"Snacks"),
//         Item(
//
//             itemName: "Veg Pizza",
//             status: "not completed",
//             quantity: 1,
//              type:"Snacks",
//             request: [
//               "Extra toppings",
//             "Extra cheese"
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
//       contact: 1235469823,
//       assignedTo: "Hari Bahadur",
//       customerName: "Rajan Paudel",
//       total: 4550,
//       paymentMethod: "Khalti",
//       itemList: [
//         Item(itemName: "French Fries", status: "no completed", quantity: 1, type: "Appetizer"),
//         Item(itemName: "Buff Mo:Mo", status: "not completed", quantity: 2, type: "Mo:Mo"),
//         Item(
//           type: "Snacks",
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
//       contact: 4561234567,
//       assignedTo: "Spider Man",
//       customerName: "Adish Shrestha",
//       total: 450,
//       paymentMethod: "Esewa",
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
//       orderStatus: "New"),
//   Order(
//       invoiceNumber: 1005,
//       cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "11:02 PM",
//       contact: 8945632145,
//       assignedTo: "Madhan Bahadur",
//       customerName: "Roshan Khatri",
//       total: 1200,
//       paymentMethod: "P.O.D",
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
//       orderStatus: "New"),
//   Order(
//       contact: 8465123458,
//       assignedTo: "Dr Strange",
//       customerName: "Golden Shrestha",
//       total: 2500,
//       paymentMethod: "Khalti",
//       invoiceNumber: 1006,
//      // cookingAdvice: "Please use less oil and chilly. ",
//       orderTime: "12:02 PM",
//       itemList: [
//         Item(itemName: "Cheese Burger", status: "not completed", quantity: 1, type: "Appetizer"),
//         Item(
//             itemName: "Chicken Mo:Mo",
//             status: "not completed",
//             quantity: 1,
//             type: "Mo:Mo",
//             request: [
//              "(Mo:Mo) 4 pices","Chutni"
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
//       contact: 7894587984,
//       assignedTo: "Iron Man",
//       customerName: "Sanzit Adhikari",
//       total: 3000,
//       paymentMethod: "Esewa",
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
//
//
// ];


List<String> itemname=[];

// Map<String, int>? calculateItemAndNumbers({ required String type}){
//   //Map<String, int> itemCount= Map();
//   Map<String, int> appetizerItemCount = Map();
//   Map<String, int> snacksItemCount = Map();
//   Map<String, int> momoItemCount = Map();
//   Map<String, int> dessertsItemCount = Map();
//
//
//   for(int i = 0; i<orders.length; i++){
//
//     for (int j = 0; j<orders[i].itemList.length; j++){
//
//       if(orders[i].itemList[j].type == "Appetizer"){
//         if ( appetizerItemCount.containsKey(orders[i].itemList[j].itemName)) {
//
//           appetizerItemCount.update(orders[i].itemList[j].itemName, (value) => value + orders[i].itemList[j].quantity);
//
//         }
//         else{
//           appetizerItemCount[orders[i].itemList[j].itemName] =
//               orders[i].itemList[j].quantity;
//         }
//
//       }
//       else if(orders[i].itemList[j].type == "Desserts"){
//         if ( dessertsItemCount.containsKey(orders[i].itemList[j].itemName)) {
//
//           dessertsItemCount.update(orders[i].itemList[j].itemName, (value) => value + orders[i].itemList[j].quantity);
//
//         }
//         else{
//           dessertsItemCount[orders[i].itemList[j].itemName] =
//               orders[i].itemList[j].quantity;
//         }
//
//       }
//       else if(orders[i].itemList[j].type == "Snacks"){
//         if ( snacksItemCount.containsKey(orders[i].itemList[j].itemName)) {
//
//           snacksItemCount.update(orders[i].itemList[j].itemName, (value) => value + orders[i].itemList[j].quantity);
//
//         }
//         else{
//           snacksItemCount[orders[i].itemList[j].itemName] =
//               orders[i].itemList[j].quantity;
//         }
//
//       }
//       else if(orders[i].itemList[j].type == "Mo:Mo"){
//         if ( momoItemCount.containsKey(orders[i].itemList[j].itemName)) {
//
//           momoItemCount.update(orders[i].itemList[j].itemName, (value) => value + orders[i].itemList[j].quantity);
//
//         }
//         else{
//           momoItemCount[orders[i].itemList[j].itemName] =
//               orders[i].itemList[j].quantity;
//         }
//
//       }
//
//
//     }
//
//   }
// //itemCount.forEach((key, value)=>print("This $key has this $value"));
//  if(type == "Appetizer"){
//    return appetizerItemCount;
//  }
//   if(type == "Snacks"){
//     return snacksItemCount;
//   }
//   if(type == "Desserts"){
//     return dessertsItemCount;
//   }
//   if(type == "Mo:Mo"){
//     return momoItemCount;
//   }
//
//
// }

// for(int i = 0; i<orders.length; i++){
//
// for (int j = 0; j<orders[i].itemList.length; j++){
//
// if ( itemCount.containsKey(orders[i].itemList[j].itemName)) {
// print("a");
// itemCount.update(orders[i].itemList[j].itemName, (value) => value + orders[i].itemList[j].quantity);
//
// }
// else{
// itemCount[orders[i].itemList[j].itemName] =
// orders[i].itemList[j].quantity;
// }
// }
//
// }
