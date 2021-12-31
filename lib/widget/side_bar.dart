import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.blue,
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
              Buttons(itemname: "Cheese Burgers", quantity: "8"),
              Buttons(itemname: "French Fries", quantity: "3"),
              SizedBox(height: 10,),
              BrownBar(title: "DESSERTS"),
              Buttons(itemname: "Black Forest", quantity: "2"),
              Buttons(itemname: "Apple Pie", quantity: "4"),
              SizedBox(height: 10,),
              BrownBar(title: "MO:MO"),
              Buttons(itemname: "Chicken Mo:Mo", quantity: "3"),
              Buttons(itemname: "Buff Mo:Mo", quantity: "2"),
              SizedBox(height: 10,),
              BrownBar(title: "SNACKS"),
              Buttons(itemname: "Buff Chilly", quantity: "8"),
              Buttons(itemname: "Mixed Pizza", quantity: "5"),
              Buttons(itemname: "Cheese Ball", quantity: "4"),
              Buttons(itemname: "Corn Dog", quantity: "1"),
              SizedBox(height: 10,),


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


