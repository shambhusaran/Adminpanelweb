import 'package:flutter/material.dart';
import 'package:web_admin_panel/Controller/order_list_controller.dart';
import 'package:web_admin_panel/Providers/order_list_provider.dart';
import 'package:web_admin_panel/Providers/order_provider.dart';
import 'package:web_admin_panel/Services/remote_services.dart';
import 'package:web_admin_panel/model/order_item.dart';
import 'package:web_admin_panel/model/order_objects.dart';
import '../model/item1.dart';
import '../model/order1.dart';
import 'package:provider/provider.dart';
import 'package:web_admin_panel/Controller/user_controller.dart';

class OrderTable extends StatelessWidget {
  String? name;




  @override
  Widget build(BuildContext context) {
    //var userControlProvider = FutureProvider(create: create, initialData: initialData);

    UserController userController = Provider.of(context, listen: true);
    return
      Consumer<OrderListController>(builder: (context, data, child)  {
        //data.getOrderList();
        //data.mapUserAndName();
        List<OrderClass> orderList=   data.orderItemList;
        return Container(
          child:
          DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text("Invoice No",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Name",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Contact",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Total",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Payment",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Assigned To",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
              DataColumn(
                label: Text("Date & Time",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              ),
            ],
            rows: orderList
                .map((orderList) =>
                DataRow(cells: [
                  DataCell(
                    Text("#" + orderList.invoice.toString()),
                  ),

                  DataCell(
                    Consumer<UserController>(builder: (context, data, child){
                     return  Text(data.getUser(orderList.placedBy).toString());
                    })



                    //     FutureProvider<String>(
                    //   create: (context) => UserController().getUser(orderList.placedBy),
                    //   initialData: "User",
                    //       child:
                    // ),


                  ),
                  DataCell(
                    Text(
                      orderList.deliveryAddress!.phone.toString(),
                    ),
                  ),
                  DataCell(
                    Text(
                      // "Rs. "+ data.getTotalCost(orderList.data.order.items).toString(),
                      "Rs. " + data.calculateTotalCost(orderList.invoice).toString(),
                    ),
                  ),
                  DataCell(
                    Container(
                      height: 22,
                      width: 54,

                      //orderList.paymentMethod

                      child: Center(child: Text("eSewa", style: const TextStyle(
                          color: Colors.white, fontSize: 12),)),

                      decoration: BoxDecoration(
                        //color:data.returnColor(orderList.paymentMethod),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),

                      ),
                    ),
                  ),
                  DataCell(
                    Text("Mr.XYZ"),
                  ),
                  DataCell(
                    Text(data.calculateTime(orderList.invoice).toString(),),
                  ),
                ]))
                .toList(),
          ),
        );
      }

      );

  }
}
