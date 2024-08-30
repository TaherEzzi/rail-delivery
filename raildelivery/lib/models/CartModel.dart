
class CartItem {
  String? imagePath;
  String? name;
  int quantity = 0;
  int? index;

  CartItem({
    required this.imagePath,
    required this.name,
    required this.index
  });

  CartItem.fromJson(Map<String, dynamic> json)
    : imagePath = json["imagePath"],
      name = json["name"],
      index = json["index"];

  Map<String, dynamic> toJson() => {
    'imagePath': imagePath,
    'name': name,
    'index': index
  };
}