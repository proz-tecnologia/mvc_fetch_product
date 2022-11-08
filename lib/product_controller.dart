import 'package:fetch_product/product_model.dart';
import 'package:fetch_product/product_repository.dart';

class ProductController {
  final repository = ProductRepository();
  Future<List<ProductModel>> getProducts() async {
    return await repository.getProducts();
  }
}
