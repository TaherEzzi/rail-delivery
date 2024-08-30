
class ItemQuantityModel {
  String? itemName;
  int quantity = 0;

  ItemQuantityModel({
    required this.itemName,
    required this.quantity
  });

  ItemQuantityModel.fromJson(Map<String, dynamic> json)
    : itemName = json["itemName"],
      quantity = json["quantity"];

  Map<String, dynamic> toJson() => {
    'itemName': itemName,
    'quantity': quantity
  };
}

class OrderModel {
  String? seatNo;
  String? coachNo;
  List<ItemQuantityModel> items = [];

  OrderModel({
    required this.seatNo,
    required this.coachNo,
    required this.items
  });

  OrderModel.fromJson(Map<String, dynamic> json)
    : seatNo = json["seatNo"],
      coachNo = json["coachNo"],
      items = json["items"];

  Map<String, dynamic> toJson() => {
    'seatNo': seatNo,
    'coachNo': coachNo,
    'items': items
  };
}