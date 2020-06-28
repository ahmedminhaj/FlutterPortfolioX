import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:google_fonts/google_fonts.dart';

class Experience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          height: breakpoint(size.width, 200, 150, 130),
          margin: EdgeInsets.symmetric(
            horizontal: 70,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: breakpoint(size.width, CrossAxisAlignment.start,
                CrossAxisAlignment.center, CrossAxisAlignment.center),
            mainAxisAlignment: breakpoint(size.width, MainAxisAlignment.center,
                MainAxisAlignment.center, MainAxisAlignment.end),
            children: [
              Text(
                "Experience",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 36, 30, 20),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
              Text(
                "Peddlecloud",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 24, 22, 16),
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Software Engineer",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 12),
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "AUG 2019 - PRESENT",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 12),
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: breakpoint(size.width, 200, 150, 130),
          margin: EdgeInsets.symmetric(
            horizontal: 70,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: breakpoint(size.width, CrossAxisAlignment.start,
                CrossAxisAlignment.center, CrossAxisAlignment.center),
            mainAxisAlignment: breakpoint(size.width, MainAxisAlignment.center,
                MainAxisAlignment.center, MainAxisAlignment.end),
            children: [
              Text(
                "Education",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 36, 30, 20),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
              Text(
                "North South University",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 24, 22, 16),
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Computer Science and Engineering",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 12),
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "MAY 2014 – DEC 2018",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 12),
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
