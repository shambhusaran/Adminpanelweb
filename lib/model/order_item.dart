import 'dart:convert';

List<OrderItem> orderItemFromJson(String str) => List<OrderItem>.from(json.decode(str).map((x)=> OrderItem.fromJson(x)));

String orderItemToJson(List<OrderItem> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderItem {
  OrderItem({
    required this.status,
    required this.data,
  });

  final String status;
  final Data data;

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(

    status: json["status"].toString(),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    required this.order,
  });

  OrderClass order;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    order: OrderClass.fromJson(json["order"]),
  );

  Map<String, dynamic> toJson() => {
    "order": order.toJson(),
  };
}

class OrderClass {
  OrderClass({
    required this.status,
    required this.acceptedAssignment,
    required this.archivedAt,
    required this.sId,
    required this.invoice,
     this.statusLog,
    required this.createdAt,
    required this.updatedAt,
    required this.iV,
     this.deliveryAddress,
    required this.placedBy,
     this.items,
  });

  final String status;
  final  bool acceptedAssignment;
  final dynamic archivedAt;
  final  String sId;
  final  int invoice;
   List<StatusLog>? statusLog;
  final DateTime createdAt;
  final  DateTime updatedAt;
  final int iV;
   DeliveryAddress? deliveryAddress;
  final String placedBy;
  final List<ItemProperties>? items;

  factory OrderClass.fromJson(Map<String, dynamic> json) => OrderClass(
    status: json["status"],
    acceptedAssignment: json["accepted_assignment"],
    archivedAt: json["archivedAt"],
    sId: json["_id"],
    invoice: json["invoice"],
    statusLog: List<StatusLog>.from(
        json["status_log"].map((x) => StatusLog.fromJson(x))),
    createdAt: DateTime.parse(json["createdAt"]),
    updatedAt: DateTime.parse(json["updatedAt"]),
    iV: json["__v"],
    deliveryAddress: DeliveryAddress.fromJson(json["deliveryAddress"]),
    placedBy: json["placed_by"].toString(),
    items: List<ItemProperties>.from(
        json["items"].map((x) => ItemProperties.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "accepted_assignment": acceptedAssignment,
    "archivedAt": archivedAt,
    "_id": sId,
    "invoice": invoice,
    "status_log": List<dynamic>.from(statusLog!.map((x) => x.toJson())),
    "createdAt": createdAt.toIso8601String(),
    "updatedAt": updatedAt.toIso8601String(),
    "__v": iV,
    "deliveryAddress": deliveryAddress!.toJson(),
    "placed_by": placedBy,
    "items": List<dynamic>.from(items!.map((x) => x.toJson())),
  };

  @override
  String toString(){
    return'{placed_by: $placedBy}';
  }
}

class DeliveryAddress {
  DeliveryAddress({
    required this.id,
    required this.user,
    required this.phone,
    required this.email,
    required this.address,
    required this.iV,
  });

  final String id;
  final String user;
  final String phone;
  final String email;
  final String address;
  final int iV;

  factory DeliveryAddress.fromJson(Map<String, dynamic> json) =>
      DeliveryAddress(
        id: json["_id"].toString(),
        user: json["user"].toString(),
        phone: json["phone"].toString(),
        email: json["email"].toString(),
        address: json["address"].toString(),
        iV: json["__v"],
      );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "user": user,
    "phone": phone,
    "email": email,
    "address": address,
    "__v": iV,
  };
}

class ItemProperties {
  ItemProperties({
    required this.item,
    required this.cooked,
    required this.id,
    required this.addons,
    required this.order,
    required this.v,
  });

  final Item item;
  final bool cooked;
  final String id;
  List<dynamic>? addons;
  final String order;
  final int v;

  factory ItemProperties.fromJson(Map<String, dynamic> json) => ItemProperties(
    item: Item.fromJson(json["item"]),
    cooked: json["cooked"],
    id: json["_id"].toString(),
    addons: List<dynamic>.from(json["addons"].map((x) => x)),
    order: json["order"].toString(),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "item": item.toJson(),
    "cooked": cooked,
    "_id": id,
    "addons": List<dynamic>.from(addons!.map((x) => x)),
    "order": order,
    "__v": v,
  };
}

class Item {
  Item({
    required this.quantity,
    required this.product,
    required this.unitPrice,
  });

  int quantity;
  Product product;
  int unitPrice;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    quantity: json["quantity"],
    product: Product.fromJson(json["product"]),
    unitPrice: json["unitPrice"],
  );

  Map<String, dynamic> toJson() => {
    "quantity": quantity,
    "product": product.toJson(),
    "unitPrice": unitPrice,
  };
}

class Product {
  Product({
    required this.usesOfferPrice,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  bool usesOfferPrice;
  String id;
  String name;
  int price;
  String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    usesOfferPrice: json["usesOfferPrice"],
    id: json["_id"].toString(),
    name: json["name"].toString(),
    price: json["price"],
    image: json["image"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "usesOfferPrice": usesOfferPrice,
    "_id": id,
    "name": name,
    "price": price,
    "image": image,
  };
}

class StatusLog {
  StatusLog({
    required this.name,
    required this.id,
    required this.setBy,
    required this.timestamp,
  });

  String name;
  String id;
  String setBy;
  DateTime timestamp;

  factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
    name: json["name"],
    id: json["_id"],
    setBy: json["set_by"],
    timestamp: DateTime.parse(json["timestamp"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "_id": id,
    "set_by": setBy,
    "timestamp": timestamp.toIso8601String(),
  };
}
