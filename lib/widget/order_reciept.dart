import 'dart:html';

import 'package:flutter/material.dart';
import 'package:web_admin_panel/Providers/order_list_provider.dart';
import 'package:web_admin_panel/View/login_view.dart';
import 'package:web_admin_panel/model/order_objects.dart';
import 'package:web_admin_panel/model/requests.dart';
import 'package:web_admin_panel/model/item1.dart';
import 'package:provider/provider.dart';





class OrderReciept extends StatelessWidget {
  final int invoiceNumber;
  final String orderTime;
  final String orderStatus;
  final String? cookingAdvice;
  final int totalItems;
  // final String itemName;
  final int itemQuantity;
  final int sequenceNumber;
  final List<Item> itemList;
  // final List<Requests> requestsList;
  //final List requests;
  double height = 20;
  //final Widget recieptRows;
  OrderReciept(
      {required this.invoiceNumber,
      required this.itemQuantity,
      required this.orderTime,
      required this.orderStatus,
      this.cookingAdvice,
      required this.totalItems,
      required this.sequenceNumber,
      required this.itemList});

  List<RecieptRows> getRecieptRows(){
    List<RecieptRows>  orList =[];
    for (int i =0; i <itemList.length; i++){
      // orList.add(RecieptRows(itemName: itemList[i].itemName, number: itemList[i].quantity, requestList: itemList[i].request,));
      orList.add(RecieptRows(itemName: itemList[i].itemName, number: itemList[i].quantity, requestList: itemList[i].request != null? itemList[i].request:[], invoiceNo: invoiceNumber,));

    }

    return orList;
  }
  int requestCount = 0;
  int itemsCount = 0;

  int  calculateRequests(){
    for(int i =0; i<=itemList.length-1; i++){
      if(itemList[i].request != null){
        for (int j =0; j<=itemList[i].request!.length-1; j++ ){
         requestCount++;
        }
      }
    }
    return requestCount;
  }

  int  calculateItems(){
    for(int i =0; i<=itemList.length-1; i++){
      itemsCount++;
    }
    return itemsCount;
  }

double calculateDimensions(){
  double heightOfContainer = 0.0;
    if (cookingAdvice != null){
      return 70+75+itemsCount*52+requestCount*30;

    }
    else{
     return 75+itemsCount*52+requestCount*30;

    }
}

  @override
  Widget build(BuildContext context) {
    // double heightOfContainer = 0.0;
    // if (invoiceNumber != null) {
    //   heightOfContainer = 165 + itemList.length * 40;
    // } else {
    //   heightOfContainer = 70 + itemList.length * 40;
    // }
    // print(calculateRequests());

    calculateItems();

    // return Container(
    //   width: 200,
    //  // height: calculateDimensions(),
    //   color: const Color(0xFFFFFFFF),
    //   child:
      return Container(
        color: const Color(0xFFFFFFFF),
        width: 180,
        child: Column(

          children: [
            // Container(
            //   //flex: cookingAdvice != null ? 4 : 2,
            //   height: 50,
            //   width: 200,
              //child:
    Container(
                height: 47,
                width: 180,
                padding: const EdgeInsets.only(left:8, right: 8, top: 6, bottom: 0),
            // Provider.of<OrderListProvider>(context, listen:false).changeItemStatus(widget.invoiceNo, widget.itemName);
                //color : Provider.of<OrderListProvider>(context).recieptColor,
                color: orderStatus == "New" ? const Color(0xFFC2403C) : const Color(0xFFD47105),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(

                          children: [
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: Center(
                                child: Text(
                                  "$sequenceNumber",
                                  style: const TextStyle(
                                      color: Color(0xFFC2403C),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 12),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              orderStatus,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 9),
                            ),
                          ],
                        ),
                        Text(
                          "Invoice no #$invoiceNumber",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 9),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 26),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              orderTime,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 9),
                            ),
                            // SizedBox(
                            //   width: 40,
                            // ),
                            Text(
                              "$totalItems Items",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 10),
                            )
                          ]),
                    ),

                    // ignore: avoid_print




                  ],
                ),

    ),
           // ),
            // Expanded(
            //   flex: 7,
            //   child:
            cookingAdvice != null
                ?
            // Consumer<OrderListProvider>(builder: (context, data, child) {
            //   return
                Container(
                padding: const EdgeInsets.only(
                    top: 0.0, bottom: 4.0, left: 8, right: 8),
                // color : Provider.of<OrderListProvider>(context).recieptColor,

                color: orderStatus == "New" ? const Color(0xFFC2403C) : const Color(0xFFD47105),
                height: 48,
                width: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(
                      height: 10,
                      indent: 2,
                      endIndent: 2,
                      thickness: 2,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5),
                      child: Text("Cooking Advice",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 9)),
                    ),
                    Text(
                      "$cookingAdvice",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 7),
                    ),
                  ],
                ),

            )
                :Container(
            //  color:orderStatus == "New" ? const Color(0xFFC2403C) : const Color(0xFFD47105),

            ),
            // const SizedBox(
            //   height: 0,
            //   width: 0,
            // ),
              Column(
                children: getRecieptRows(),
              ),

              Consumer<OrderListProvider>(builder: (context, data, child) {
                return Container(
                  padding: const EdgeInsets.only(
                      bottom: 9, top: 4, left: 20, right: 20),
                  height: 44,
                  width: 180,
                  // color: Colors.orangeAccent,
                  child: ElevatedButton(
                    style: ButtonStyle(

                      backgroundColor: MaterialStateProperty.all<Color>( data.getOrderStatus(invoiceNumber)=="New"? const Color(0xFF30B700): const Color(0xFF96B48C),),
                    ),
                    child:  Text(data.getOrderStatus(invoiceNumber)=="New"?"Mark Completed":"Undo Completion", style: const TextStyle(
                        fontSize: 11, fontWeight: FontWeight.bold),),
                    onPressed: () {
                      data.markOrderCompleted(invoiceNumber);
                    },
                  ),
                );

              },
              ),


          ],
        //),
    ),
      );
  }
}

class RecieptRows extends StatefulWidget {
  //final List<Requests>? requestList;
  final List<String>? requestList;
  final int number;
  final String itemName;
  final int invoiceNo;

  const RecieptRows(
      {required this.itemName, required this.number, required this.invoiceNo, this.requestList});
  @override
  _RecieptRowsState createState() => _RecieptRowsState();
}

class _RecieptRowsState extends State<RecieptRows> {
  //bool? checkBoxValue = false;
  int listLength = 0;

  List<Widget> getListsOfRequests() {


    List<Widget> orList = [];
    for (int i = 0; i < widget.requestList!.length; i++) {
      orList.add(ExtraRecieptRows(req1: widget.requestList![i]));
    }
    return orList;
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, left: 15, right: 15),
      child: Container(
       // color: const Color(0xFFFFFFFF),
        width: 180,
        child: Column(
          children: [
            Container(
              height: 20,
              width: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.number.toString() + " x",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      // Text("Pineapple Pie"),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        widget.itemName,
                        style: const TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Consumer<OrderListProvider>(builder: (context, data, child){
                    bool checkboxValue = data.isCompleted;
                    return SizedBox(
                      width: 13,
                      height: 13,
                      child: Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          value: data.getStatus(widget.invoiceNo, widget.itemName)=="completed"?true:false,
                          onChanged: (value) {
                            Provider.of<OrderListProvider>(context, listen: false ).changeItemStatus(widget.invoiceNo, widget.itemName);
                            
                            

                    },
                    ),
                    );
                  }),

                ],
              ),
            ),
            Column(
              children: getListsOfRequests(),
            ),
            const Divider(
              height: 10,
              indent: 2,
              endIndent: 2,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}

class ExtraRecieptRows extends StatelessWidget {
  final String req1;

  ExtraRecieptRows({required this.req1});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 15,
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, top: 5),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "+ " + req1,
                  style: const TextStyle(fontSize: 8, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

