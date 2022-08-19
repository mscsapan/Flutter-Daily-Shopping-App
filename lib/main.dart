import 'package:daily_shopping/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'src/screens/welcome_screen.dart';

void main() {
  Hive.initFlutter();
  /*Hive.registerAdapter<Product>(ProductAdapter());
  await Hive.openBox(ProductDatabase().boxName);*/
  runApp(
    const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
