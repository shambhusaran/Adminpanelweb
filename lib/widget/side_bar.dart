import 'package:flutter/material.dart';
import 'package:web_admin_panel/model/order_objects.dart';
import 'package:web_admin_panel/Providers/order_list_provider.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      // child: Text("Hiiiiiii"),
        child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 60,
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const <Widget>[
                        Text("ITEM", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
                        Text("QUANTITY", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
                      ],
                  ),
                ),

              ),
              const BrownBar(title: "APPETIZER"),
              Column(
                children: getAppetizer(),
              ),
              // Buttons(itemname: "Cheese Burgers", quantity: "8"),
              // Buttons(itemname: "French Fries", quantity: "3"),
              const SizedBox(height: 10,),
              const BrownBar(title: "DESSERTS"),
              Column(
                children: getDeserts(),
              ),
              // Buttons(itemname: "Black Forest", quantity: "2"),
              // Buttons(itemname: "Apple Pie", quantity: "4"),
              const SizedBox(height: 10,),
              const BrownBar(title: "MO:MO"),
              Column(
                children: getmomo(),
              ),

              // Buttons(itemname: "Chicken Mo:Mo", quantity: "3"),
              // Buttons(itemname: "Buff Mo:Mo", quantity: "2"),
              const SizedBox(height: 10,),
              const BrownBar(title: "SNACKS"),
              Column(
                children: getSnacks()
                ,
              ),
              // Buttons(itemname: "Buff Chilly", quantity: "8"),
              // Buttons(itemname: "Mixed Pizza", quantity: "5"),
              // Buttons(itemname: "Cheese Ball", quantity: "4"),
              // Buttons(itemname: "Corn Dog", quantity: "1"),
              const SizedBox(height: 10,),


            ]
        )

    );
  }
}

class BrownBar extends StatelessWidget {
  final String? title;

  const BrownBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 25,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Center(child: Text(title!)),
          ),
        ),
      ],
    );
  }
}

class Buttons extends StatelessWidget {
  final String? itemname;
  final String? quantity;
  const Buttons({required this.itemname, required this.quantity});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(itemname!),
          Text(quantity!, style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}

List<Widget> getAppetizer(){
  List<Widget> appetizer = [];
  OrderListProvider(). calculateItemAndNumbers(type: "Appetizer")!.forEach((key, value){
     appetizer.add(Buttons(itemname: key, quantity: value.toString()));});

   return appetizer;

}
List<Widget> getDeserts(){
  List<Widget> deserts = [];
  OrderListProvider().calculateItemAndNumbers(type: "Desserts")!.forEach((key, value){
    deserts.add(Buttons(itemname: key, quantity: value.toString()));});

  return deserts;

}
List<Widget> getSnacks(){
  List<Widget> snacks = [];
  OrderListProvider(). calculateItemAndNumbers(type: "Snacks")!.forEach((key, value){
    snacks.add(Buttons(itemname: key, quantity: value.toString()));});

  return snacks;

}
List<Widget> getmomo(){
  List<Widget> momo = [];
  OrderListProvider().calculateItemAndNumbers(type: "Mo:Mo")!.forEach((key, value){
    momo.add(Buttons(itemname: key, quantity: value.toString()));});

  return momo;

}


