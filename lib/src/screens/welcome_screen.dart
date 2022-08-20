import 'package:daily_shopping/src/constants/constants.dart';
import 'package:daily_shopping/src/screens/home_screen.dart';
import 'package:daily_shopping/src/views/custom_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
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
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Buy Groceries\nEasily With us',
                  style: GoogleFonts.poppins(
                      fontSize: 38.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Listen Podcast and open your\nworld with this application',
                  style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  ),
                  child: Container(
                    height: 60.0,
                    width: _size.width * 0.6,
                    margin: const EdgeInsets.only(top: 30.0),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        gradient: kPrimaryGradientColor),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
