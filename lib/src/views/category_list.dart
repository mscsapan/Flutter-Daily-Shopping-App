import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/list/product_list.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return SizedBox(
      height: _size.height * 0.34,
      // width: _size.width * 0.65,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const ClampingScrollPhysics(),
        child: Row(
          children: List.generate(
            products.length,
            (index) {
              final Product product = products[index];
              return Container(
                height: _size.height * 0.3,
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
                      child: Image.asset(product.image!),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name!,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: darkblue),
                              ),
                              Text(product.category!),
                              Text(product.price.toString()),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
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
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
