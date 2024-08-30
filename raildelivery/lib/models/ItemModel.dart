
class ItemInfoModel {
  bool available = false;
  String? image;

  ItemInfoModel({
    required this.image
  });

  ItemInfoModel.fromJson(Map<String, dynamic> json)
    : available = json["available"],
      image = json["image"];

  Map<String, dynamic> toJson() => {
    'available': available,
    'image': image
  };
}

class ItemModel {
  String? itemName;
  ItemInfoModel? info;

  ItemModel({
    required this.itemName,
    required this.info
  });

  ItemModel.fromJson(Map<String, dynamic> json)
    : itemName = json["itemName"],
      info = json["info"];

  Map<String, dynamic> toJson() => {
    'itemName': itemName,
    'info': info
  };
}