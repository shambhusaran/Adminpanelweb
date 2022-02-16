
import 'package:flutter/cupertino.dart';
import 'package:web_admin_panel/Services/remote_services.dart';
import 'package:web_admin_panel/model/order_item.dart';
import 'package:web_admin_panel/model/order_json.dart';

class OrderProvider extends ChangeNotifier{
  List<OrderClass> orders =[];



  // final List<String> invoiceNumbers=[];


  // void fetchOrdersItem()async
  // {
  //
  //   for (var num in invoiceNumbers) {
  //     var order = await RemoteServices.fetchOrderItems();
  //     orders.add(order!);
  //
  //   }}


  // void getInvoiceNumber()async{
  //
  //     List<Orders>? list = await RemoteServices.orderList;
  //     if (list != null) {
  //       for (var order in list) {
  //         invoiceNumbers.add(order.invoice);
  //       }
  //     }
  //
  //
  //
  // }
  int totalPrice = 0;

  int getTotalCost(List<ItemProperties> itemList){

    for(int i = 0; i<itemList.length; i++){
      totalPrice = totalPrice + itemList[i].item.unitPrice;
    }
    return totalPrice;

  }


}