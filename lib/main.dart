import 'package:flutter/material.dart';

import 'src/screens/welcome_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
