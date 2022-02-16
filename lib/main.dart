import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_admin_panel/View/home_view.dart';
import 'package:web_admin_panel/Controller/user_controller.dart';
import 'package:web_admin_panel/View/login_view.dart';
import 'Providers/order_list_provider.dart';
import 'Providers/order_provider.dart';
import 'Services/remote_services.dart';
import 'package:web_admin_panel/Controller/order_list_controller.dart';


void main() {
 // UserController().getUser("60f99c6a3f6cf413f8b913e9");
  //OrderListController().getOrderList();
  // OrderListController().getOrderList();
  //


  runApp(
    MultiProvider(
      providers: [
      ChangeNotifierProvider<OrderListController>(create : (context) => OrderListController()),
      ChangeNotifierProvider<UserController>(create: (context)=>UserController()),
    ],
    child: MyApp(),
    ),
    //
    //   ChangeNotifierProvider(
    //   // create: (context)=> OrderListProvider(),
    // create: (context)=>OrderListController(),
    //   child: const MyApp())

  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),


    );
  }
}


