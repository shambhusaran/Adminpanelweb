import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_admin_panel/model/order1.dart';
import 'package:web_admin_panel/widget/order_reciept.dart';
import 'package:provider/provider.dart';
import 'package:web_admin_panel/Controller/order_list_controller.dart';


import 'order_tables.dart';


class OrderBoard extends StatelessWidget {


  List<OrderReciept> getLists(List<Order> orders){
  List<OrderReciept>  orList =[];
   for (int i =0; i <orders.length; i++){
     orList.add( OrderReciept(invoiceNumber: orders[i].invoiceNumber, itemQuantity: orders[i].itemList.length, orderTime: orders[i].orderTime,
         orderStatus:orders[i].orderStatus, totalItems: orders[i].itemList.length, sequenceNumber: i+1, itemList: orders[i].itemList, cookingAdvice: orders[i].cookingAdvice,),);

   }
    return orList;
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<OrderListController>(builder: (context, data, child){
      //final List<Order> orderList = data.orders;
      return Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(child: OrderTable()),


        // child: Wrap(
        //   //runAlignment: WrapAlignment.start,
        //   //runAlignment: WrapAlignment.end,
        //   alignment: WrapAlignment.start,
        //  // verticalDirection: VerticalDirection.up,
        //   runSpacing: 0.0,
        //   direction: Axis.horizontal,
        //   spacing: 15,
        //   children: getLists(orderList),
        //   //]
        // ),
      );
    });
  }

}

