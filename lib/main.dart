import 'package:daily_shopping/src/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() {
  Hive.initFlutter();
  /*Hive.registerAdapter<Product>(ProductAdapter());
  await Hive.openBox(ProductDatabase().boxName);*/
  runApp(
    const MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
