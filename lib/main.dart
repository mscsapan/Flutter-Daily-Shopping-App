import 'package:daily_shopping/src/database/product_database.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/screens/welcome_screen.dart';

void main() async {
  Hive.initFlutter();
  Hive.registerAdapter<Product>(ProductAdapter());
  await Hive.openBox(ProductDatabase().boxName);
  runApp(
    const MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
