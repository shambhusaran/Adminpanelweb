import 'item1.dart';

class Order{
  final int invoiceNumber;
 final  String orderTime;
 late String orderStatus;
  final String? cookingAdvice;
  //final Item items;
 final  List<Item> itemList;
 final String assignedTo;
 final String customerName;
 final int contact;
 final String paymentMethod;
 final int total;
 final String date;


Order({required this.invoiceNumber, required this.date, required this.orderTime, this.cookingAdvice, required this.itemList, required this.orderStatus, required this.assignedTo, required this.customerName, required this.contact, required this.total, required this.paymentMethod});

}