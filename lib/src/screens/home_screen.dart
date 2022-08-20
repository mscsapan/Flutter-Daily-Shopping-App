import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/list/product_list.dart';
import 'package:daily_shopping/src/models/product_model.dart';
import 'package:daily_shopping/src/views/bottom_nav_bar.dart';
import 'package:daily_shopping/src/views/category_list.dart';
import 'package:daily_shopping/src/views/recent_shop.dart';
import 'package:daily_shopping/src/views/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../views/heading_text.dart';
import '../views/product_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextStyle titleStyle() {
    return GoogleFonts.poppins(
      fontSize: 16.0,
      color: Colors.grey,
      letterSpacing: 0.6,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        height: _size.height,
        width: _size.width,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome',
                        style: titleStyle(),
                      ),
                      Text(
                        'Alia Vhatt',
                        style: titleStyle()
                            .copyWith(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/profile.png'),
                        )
                        // color: Colors.redAccent,
                        ),
                  ),
                ],
              ),
            ),
            const SearchField(),
            const CategoryProduct(),
            const CategoryList(),
            const HeadingText(headingText: 'Recent Shop', textSize: 24.0),
            const RecentShop(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
