import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constants.dart';

class HeadingText extends StatelessWidget {
  const HeadingText(
      {Key? key, required this.headingText, required this.textSize})
      : super(key: key);
  final String headingText;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      headingText,
      style: GoogleFonts.poppins(
        fontSize: textSize,
        color: darkblue,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
