import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Row(
      children: [
        Flexible(
          child: Container(
            height: _size.height * 0.08,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
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
    );
  }
}
