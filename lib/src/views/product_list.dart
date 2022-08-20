import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../list/category_list.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({Key? key}) : super(key: key);
  final String cat = 'ALL';

  @override
  Widget build(BuildContext context) {
    // final _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => SizedBox(
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    categories[index],
                    style: GoogleFonts.poppins(
                      fontWeight: cat == categories[index]
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: cat == categories[index]
                          ? Colors.green[900]
                          : Colors.grey,
                      fontSize: 16.0,
                    ),
                  ),
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                      color: cat == categories[index]
                          ? Colors.green[900]
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
