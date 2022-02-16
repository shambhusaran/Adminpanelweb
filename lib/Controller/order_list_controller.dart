
import 'package:flutter/cupertino.dart';
import 'package:web_admin_panel/Repository/user_repository.dart';
import 'package:web_admin_panel/model/order_item.dart';
//import 'package:web_admin_panel/Services/remote_services.dart';
import 'package:web_admin_panel/Repository/order_repository.dart';
import 'package:web_admin_panel/model/user.dart';


class OrderListController extends ChangeNotifier{
  OrderListController(){
    getOrderList();
   // mapUserAndName();

  }
   List<OrderClass> orderItemList =[];
  List<int> total=[];

  // void runOrderList ()  {
  //   print("3");
  //    getOrderList();
  //   print("4");
  //   // for(int i=0; i<orderItemList.length; i++){
  //   //   print(orderItemList[i].sId);
  //   // }
  // }


  void getOrderList()async {
    List<OrderClass> orderItemmList =(await OrderListRepository.fetchOrderItems())!;
    print(orderItemmList.length);
    for(int i=0; i<orderItemmList.length; i++){
      orderItemList.add(orderItemmList[i]);
    }printorderList();
    mapUserAndName();
    notifyListeners();

    //notifyListeners();
  }

  void printorderList(){
    for (int i = 0; i<orderItemList.length; i++){
      print(orderItemList[i].status);
    }

  }

  int? calculateTotalCost(int invoice){
    for(int i = 0; i<orderItemList.length;i++){
      int total = 0;

      if(orderItemList[i].invoice == invoice) {
        for (int j = 0; j < orderItemList[i].items!.length; j++) {
          total = total + (orderItemList[i].items![j].item.unitPrice)*orderItemList[i].items![j].item.quantity;
        }
        return total;
      }
    }

  }

  String? calculateTime(int invoice){
    for(int i = 0; i<orderItemList.length;i++){
      if(orderItemList[i].invoice == invoice) {
       DateTime time = (orderItemList[i].statusLog![0].timestamp);
      String  timeInString  =  time.toString();
      return timeInString.substring(0, 16);
      }
    }
  }
  String username="aaa";

  String? getUser(String id) {
    Future<User?> usr =UserRepository.fetchUser(id);

    usr.then((user){
      username = user!.name;
      // username = string!.name;
      //print(string.name);
    }
    );

    return username;

  }

  Map<String, String> mapUserAndOrder = {};

  void mapUserAndName()async {

    for(int i =0; i<orderItemList.length; i++){

      User usr = (await UserRepository.fetchUser(orderItemList[i].placedBy))!;

      print(usr.email);

      mapUserAndOrder[orderItemList[i].placedBy] = usr.name;

      print(mapUserAndOrder[orderItemList[i].placedBy]);

    }

  }


  void setUserNamesToAList()async {
    for(int i =0; i<orderItemList.length; i++){

      User usr = (await UserRepository.fetchUser(orderItemList[i].placedBy))!;

    print(usr.email);

    mapUserAndOrder[orderItemList[i].placedBy] = usr.name;

    print(mapUserAndOrder[orderItemList[i].placedBy]);

  }

  }

  String? returnName(String id){
String name = "user";
    for(String keys in mapUserAndOrder.keys){
      if(keys == id){
        name = mapUserAndOrder[id]!;
        print(id);
        //return name;

      }
      return name;
    }
  }
}