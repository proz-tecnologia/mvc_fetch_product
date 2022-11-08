import 'dart:convert';

import 'package:fetch_product/product_model.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  Future<List<ProductModel>> getProducts() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/carts'),
    );
    print(response);
    print(jsonDecode(response.body));
    final products = jsonDecode(response.body)["carts"][0]["products"];
    final productList = List.from(products);
    final listProductModel =
        productList.map((product) => ProductModel.fromMap(product)).toList();
    return listProductModel;
  }
}
