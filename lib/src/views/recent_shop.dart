import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/list/recent_product_list.dart';
import 'package:daily_shopping/src/models/recent_model.dart';
import 'package:daily_shopping/src/views/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentShop extends StatelessWidget {
  const RecentShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Flexible(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(recent.length, (position) {
            final Recent product = recent[position];
            return Container(
              height: _size.height * 0.18,
              width: _size.width,
              margin: const EdgeInsets.symmetric(vertical: 6.0),
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 120.0,
                          width: 120.0,
                          margin: const EdgeInsets.only(right: 10.0),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Image.asset(product.product!.image!),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HeadingText(
                                headingText: '${product.product!.name}',
                                textSize: 22.0),
                            const SizedBox(height: 12.0),
                            Text(
                              product.product!.category!,
                              style: GoogleFonts.poppins(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      '\$${product.product!.price}',
                      style: GoogleFonts.poppins(
                        color: green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
