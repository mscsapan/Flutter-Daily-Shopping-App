import 'package:flutter/material.dart';

Container middleNavBarItem() {
  return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green[900],
      ),
      child: const Icon(
        Icons.qr_code_scanner_outlined,
        color: Colors.white,
      ));
}
