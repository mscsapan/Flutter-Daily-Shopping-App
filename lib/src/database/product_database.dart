import 'package:daily_shopping/src/models/product_model.dart';
import 'package:hive_flutter/adapters.dart';

class ProductDatabase {
  final String boxName = 'ProductBox';

  Future<Box> openProductBox() async {
    Box<Product> box = await Hive.openBox<Product>(boxName);
    return box;
  }

  Future<List<Product>> getAllProduct() async {
    final box = await openProductBox();
    //problem may happen...
    List<Product> product = box.values<List<Product>>.toList();
    return product;
  }

  Future<void> addToCart(Product product) async {
    final box = await openProductBox();
    await box.add(product);
  }

  Future<void> updateProduct(Product product, int id) async {
    final box = await openProductBox();
    await box.putAt(id, product);
  }

  Future<void> deleteProduct(int id) async {
    final box = await openProductBox();
    await box.deleteAt(id);
  }

  Future<void> deleteAll() async {
    final box = await openProductBox();
    await box.clear();
  }
}
