import 'dart:convert';
class Product {
  String title;
  double price;
  String description;
  String imageAssetPath;
  Product({
    required this.title,
    required this.price,
    required this.description,
    required this.imageAssetPath,
  });

  Product copyWith({
    String? title,
    double? price,
    String? description,
    String? imageAssetPath,
  }) {
    return Product(
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      imageAssetPath: imageAssetPath ?? this.imageAssetPath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'description': description,
      'imageAssetPath': imageAssetPath,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      title: map['title'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      description: map['description'] ?? '',
      imageAssetPath: map['imageAssetPath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'product(title: $title, price: $price, description: $description, imageAssetPath: $imageAssetPath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.title == title &&
      other.price == price &&
      other.description == description &&
      other.imageAssetPath == imageAssetPath;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      price.hashCode ^
      description.hashCode ^
      imageAssetPath.hashCode;
  }
}
