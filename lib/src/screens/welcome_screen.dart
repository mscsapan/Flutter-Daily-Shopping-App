import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/views/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: PictureClipper(),
            child: Container(
              height: _size.height * 0.6,
              width: _size.width,
              color: background,
              child: Image.asset(
                'assets/woman_vegetable.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: _size.height * 0.4,
            width: _size.width,
            child: Column(
              children: [
                Text(
                  'Buy Groceries Easily With us',
                  style: GoogleFonts.poppins(
                      fontSize: 36.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Listen Podcast and open your world with this application',
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
