import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.product}) : super(key: key);
  final Product product;

  GestureDetector iconContainer(IconData icon, [Function()? onTap]) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50.0,
        width: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: white,
        ),
        child: Icon(icon, color: orange, size: 28.0),
      ),
    );
  }

  InkWell countButton(IconData icon, Function() onTap, [Color? color]) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
            gradient: color != null ? null : kPrimaryGradientColor),
        child: Icon(
          icon,
          color: white,
          size: 28.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundOnboard,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SizedBox(
          height: _size.height,
          width: _size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 14.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconContainer(
                        Icons.arrow_back_ios, () => Navigator.pop(context)),
                    iconContainer(Icons.shopping_cart_rounded),
                  ],
                ),
              ),
              Container(
                height: _size.height * 0.4,
                width: _size.width,
                // color: Colors.orange,
                alignment: Alignment.center,
                // margin: const EdgeInsets.symmetric(vertical: 5.0),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Hero(
                    tag: product,
                    child: Image.asset(
                      product.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                product.name!,
                style: GoogleFonts.poppins(
                  fontSize: 40.0,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: List.generate(
                          5,
                          (index) => Icon(
                            Icons.star,
                            color: index == 4 ? Colors.grey : orange,
                            size: 25.0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        '(${product.rate})',
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      countButton(Icons.remove, () {},
                          const Color(0xFF88d160).withOpacity(0.6)),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '01'.padLeft(2, '0'),
                          style: GoogleFonts.poppins(
                            fontSize: 20.0,
                            color: darkblue,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                          ),
                        ),
                      ),
                      countButton(Icons.add, () {}),
                    ],
                  ),
                ],
              ),
              Text(
                'Description',
                style: GoogleFonts.poppins(
                  fontSize: 25.0,
                  color: darkblue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                product.description!,
                textAlign: TextAlign.justify,
                maxLines: 4,
                style: GoogleFonts.poppins(
                  fontSize: 15.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: _size.height * 0.12,
        width: _size.width,
        // color: Colors.redAccent,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Price',
                  style:
                      GoogleFonts.poppins(color: Colors.grey, fontSize: 16.0),
                ),
                Text(
                  '\$ ${product.price}',
                  style: GoogleFonts.poppins(
                    color: darkblue,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            Container(
              height: 70.0,
              width: _size.width * 0.5,
              // margin: const EdgeInsets.only(top: 30.0),
              alignment: Alignment.center,
              // padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  gradient: kPrimaryGradientColor),
              child: Text(
                'Add To Cart',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
