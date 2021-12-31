import 'package:flutter/material.dart';
import 'package:web_admin_panel/widget/body.dart';
import 'package:web_admin_panel/widget/navigation_bar.dart';
import 'package:web_admin_panel/widget/side_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: <Widget>[
        NavigationBar(),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(flex:1,
                  child: SideBar()),
              Expanded(
                  flex:4,
                  child: Body()),

            ],
          ),
        )
      ],)
    );
  }
}
