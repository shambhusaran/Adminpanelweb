import 'package:flutter/material.dart';
import 'package:web_admin_panel/widget/body.dart';
import 'package:web_admin_panel/widget/navigation_bar.dart';
import 'package:web_admin_panel/widget/side_bar.dart';
import 'package:web_admin_panel/widget/body_of_home.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: Column(children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(flex:1,
                  child: SideBar(),),
              Expanded(
                  flex:4,
                  child: OrderBoard(),
                  // child: Container(
                  //   padding: EdgeInsets.all(30),
                  //   color: Color(0xFFF4F4F4),
                  //   child: OrderBoard(),
                  //)
                ),

            ],
          ),
        )
      ],)
    );
  }
}
