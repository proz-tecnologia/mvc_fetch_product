import 'dart:convert';

class ProductModel {
  final String title;
  final double price;
  final int stock;
  const ProductModel({
    required this.title,
    required this.price,
    required this.stock,
  });

  ProductModel copyWith({
    String? title,
    double? price,
    int? stock,
  }) {
    return ProductModel(
      title: title ?? this.title,
      price: price ?? this.price,
      stock: stock ?? this.stock,
    );
  }

//var product = ProductModel(title:'Kaio',price:9.99,stock:1)
// var toMap = {
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'price': price,
      'stock': stock,
    };
  }

// var map = {
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }
//var fromMap = ProductModel(title: map['title'],price:map['price'],stock:map['stock'])
//var product = ProductModel(title:'Kaio',price:9.99,stock:1)
  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      title: map['title'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      stock: map['stock']?.toInt() ?? 0,
    );
  }

//var product = ProductModel(title:'Kaio',price:9.99,stock:1)
// var toMap = {
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }
//var jsonEncode = "{
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }"
  String toJson() => json.encode(toMap());

// var api = "{
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }"
// var decode = {
//  'title':'Kaio',
//  'price':9.99,
//  'stock':1
// }
//var fromMap = ProductModel(title: map['title'],price:map['price'],stock:map['stock'])
//var product = ProductModel(title:'Kaio',price:9.99,stock:1)
  factory ProductModel.fromJson(String stringona) =>
      ProductModel.fromMap(json.decode(stringona));

  @override
  String toString() =>
      'ProductModel(title: $title, price: $price, stock: $stock)';
}
