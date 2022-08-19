import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/list/category_list.dart';
import 'package:daily_shopping/src/views/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  TextStyle titleStyle() {
    return GoogleFonts.poppins(
      fontSize: 16.0,
      color: Colors.grey,
      letterSpacing: 0.6,
    );
  }

  final String cat = 'ALL';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background,
      body: Container(
        height: _size.height,
        width: _size.width,
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
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
                        'Love Bird',
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
            Row(
              children: [
                Flexible(
                  child: Container(
                    height: _size.height * 0.08,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    margin: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 6.0),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          enabled: false,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Search Grocery..',
                          hintStyle: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 28.0,
                            color: Colors.grey,
                          )),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Container(
                  height: 60.0,
                  width: 60.0,
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Icon(
                    Icons.tune_rounded,
                    size: 28.0,
                    color: Colors.green[900],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
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
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
