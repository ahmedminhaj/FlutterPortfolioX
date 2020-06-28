import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:google_fonts/google_fonts.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      children: [
        Container(
          height: breakpoint(size.width, 340, 180, 150),
          margin: EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: breakpoint(size.width, CrossAxisAlignment.start,
                CrossAxisAlignment.center, CrossAxisAlignment.center),
            mainAxisAlignment: breakpoint(size.width, MainAxisAlignment.center,
                MainAxisAlignment.center, MainAxisAlignment.end),
            children: [
              Text(
                "Core Skills",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 36, 28, 18),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
              Text(
                " - UX/UI Design\n - Mobile App Development\n - Web Development",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 14),
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: breakpoint(size.width, 420, 220, 160),
          margin: EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: breakpoint(size.width, CrossAxisAlignment.start,
                CrossAxisAlignment.center, CrossAxisAlignment.center),
            mainAxisAlignment: breakpoint(size.width, MainAxisAlignment.center,
                MainAxisAlignment.center, MainAxisAlignment.end),
            children: [
              Text(
                "Development Skills",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 36, 28, 18),
                  fontWeight: FontWeight.w500,
                  letterSpacing: 4,
                ),
              ),
              Text(
                " - Dart, Python, JavaScript, CSS, Sass, PHP\n - Flutter, WordPress, Godot, arduino\n - OpenCV, ReactJS, Haar Cascade\n - JSON, RESTful API\n - Figma, Adobe XD\n - SQFlite\n - Git",
                style: GoogleFonts.asap(
                  fontSize: breakpoint(size.width, 20, 18, 14),
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
