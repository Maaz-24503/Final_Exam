class Item {
  final String itemName;
  final String imagePath;
  final String category;
  final String subCategory;
  Item(
      {required this.itemName,
      required this.imagePath,
      required this.category,
      required this.subCategory});
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        itemName: json['itemName'],
        imagePath: json['imagePath'],
        category: json['category'],
        subCategory: json['subCategory']);
  }

  Map<String, dynamic> toJson() {
    return {
      'itemName': itemName,
      'imagePath': imagePath,
      'category': category,
      'subCategory': subCategory
    };
  }
}
class SubCategory {
  final String name;
  final String category;
  final List<Item> items;

  SubCategory({required this.name, required this.category, required this.items});

  Map<String, dynamic> toJson() => {
    'name': name,
    'category': category,
    'items': items.map((item) => item.toJson()).toList(),
  };

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        name: json['name'] as String,
        category: json['category'] as String,
        items: (json['items'] as List)
            .map((item) => Item.fromJson(item))
            .toList(),
      );
}

class MyCategory {
  final String name;
  final List<SubCategory> subCategories;

  MyCategory({required this.name, required this.subCategories});

  Map<String, dynamic> toJson() => {
    'name': name,
    'subCategories': subCategories.map((subCategory) => subCategory.toJson()).toList(),
  };

  factory MyCategory.fromJson(Map<String, dynamic> json) => MyCategory(
        name: json['name'] as String,
        subCategories: (json['subCategories'] as List)
            .map((subCategory) => SubCategory.fromJson(subCategory))
            .toList(),
      );
}

