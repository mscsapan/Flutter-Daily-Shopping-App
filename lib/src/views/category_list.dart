import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/list/product_list.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:daily_shopping/src/views/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/detail_screen.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height * 0.3,
      // width: _size.width * 0.65,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        child: Row(
          children: List.generate(
            products.length,
            (index) {
              final Product _product = products[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(product: _product),
                  ),
                ),
                child: Container(
                  height: _size.height * 0.28,
                  width: _size.width * 0.55,
                  margin: const EdgeInsets.only(right: 14.0),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: _size.height * 0.18,
                        width: _size.width,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10.0),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 20,
                              right: 20.0,
                              child: Container(
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 30.0,
                                        spreadRadius: 15.0,
                                        color: _product.color!,
                                      )
                                    ]),
                              ),
                            ),
                            Hero(
                              tag: _product,
                              child: Image.asset(
                                _product.image!,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 12.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HeadingText(
                                  headingText: '${_product.name}',
                                  textSize: 20.0),
                              Text(
                                _product.category!,
                                style: GoogleFonts.poppins(color: Colors.grey),
                              ),
                              Text(
                                '\$ ${_product.price}',
                                style: GoogleFonts.poppins(
                                  color: green,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () => debugPrint(_product.name),
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: const BoxDecoration(
                                color: Colors.deepOrange,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0)),
                              ),
                              child: const Icon(
                                Icons.shopping_bag_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
