import 'requests.dart';
class Item{

  final String itemName;
  late String status;
  //final String itemDescription;
  final int quantity;
  //final List<Requests>? request;
  final List<String>? request;
  final String type;
  final String? request1;
  final String? request2;
  //final String status;

  Item({required this.itemName, required this.status, required this.quantity, this.request1, this.request2, this.request, required this.type});

}