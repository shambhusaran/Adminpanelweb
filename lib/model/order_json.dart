import 'dart:convert';

import 'package:flutter/cupertino.dart';

//List<OrdersJson> ordersFromJson(String str) => List<OrdersJson>.from(json.decode(str).map((x) => OrdersJson.fromJson(x)));
OrdersJson ordersFromJson(String Str) => OrdersJson.fromJson(json.decode(Str));

//String ordersToJson(List<OrdersJson> data) => json.encode(List<dynamic>.from(data.map((x)=>x.toJson())));
String ordersToJson(OrdersJson data)=> json.encode(data.toJson());

class OrdersJson {

  final String status;
  final Data data;

  OrdersJson({required this.status, required this.data});

  factory OrdersJson.fromJson(Map<String, dynamic> json) => OrdersJson(
      status :  json["status"],
      data : Data.fromJson(json["data"]),

  );


  Map<String, dynamic> toJson() => {
    "status":  status,

    "data" : data.toJson(),

  };

}

class Data {
  final List<Orders> orders;

  Data({ required this.orders});

  factory Data.fromJson(Map<String, dynamic> json)=>Data(
    orders: List<Orders>.from(json["orders"].map((x) =>Orders.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
  };
}

class Orders {
  final String status;
  final bool acceptedAssignment;
  final String archivedAt;
  final String sId;
  final String invoice;
  final List<StatusLog> statusLog;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int iV;
 final  String deliveryAddress;
  final String placedBy;
  final String assignedBy;
  final String assignedTo;

  Orders(
      {
        required this.status,
        required this.acceptedAssignment,
        required this.archivedAt,
        required this.sId,
        required this.invoice,
        required this.statusLog,
        required this.createdAt,
        required this.updatedAt,
        required this.iV,
        required this.deliveryAddress,
        required this.placedBy,
        required this.assignedBy,
        required this.assignedTo});

  factory Orders.fromJson(Map<String, dynamic> json) => Orders(
    status: json["status"].toString(),
    acceptedAssignment: json["accepted_assignment"],
    archivedAt: json["archivedAt"].toString(),
    sId: json["_id"].toString(),
    invoice: json["invoice"].toString(),
    statusLog: List<StatusLog>.from(
        json["status_log"].map((x) => StatusLog.fromJson(x))),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    iV: json["__v"],
    deliveryAddress: json["deliveryAddress"].toString(),
    placedBy: json["placed_by"].toString(),
    assignedBy: json["assigned_by"].toString(),
    assignedTo: json["assigned_to"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "accepted_assignment": acceptedAssignment,
    "archivedAt": archivedAt,
    "_id": sId,
    "invoice": invoice,
    "status_log": List<dynamic>.from(statusLog.map((x) => x.toJson())),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": iV,
    "deliveryAddress": deliveryAddress,
    "placed_by": placedBy,
    "assigned_by": assignedBy,
    "assigned_to": assignedTo,
  };


}

class StatusLog {
  StatusLog({
    required this.name,
    required this.id,
    required this.setBy,
    required this.timestamp,
  });

  final String name;
  final String id;
  final String setBy;
  final DateTime timestamp;

  factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
    name: json["name"].toString(),
    id: json["_id"].toString(),
    setBy: json["set_by"].toString(),
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "_id": id,
    "set_by": setBy,
    "timestamp": timestamp.toIso8601String(),
  };
}
