import 'package:hive/hive.dart';

import 'product_model.dart';
part 'recent_model.g.dart';

@HiveType(typeId: 1)
class Recent {
  @HiveField(0)
  final Product? product;
  Recent({this.product});
}
