import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 70),
        Text(
          "Contact",
          style: GoogleFonts.asap(
            fontSize: breakpoint(size.width, 40, 30, 22),
            fontWeight: FontWeight.w500,
            letterSpacing: 4,
          ),
        ),
        SizedBox(height: 25),
        Text(
          "ahmedminhaj44@gmail.com",
          style: GoogleFonts.asap(
            fontSize: breakpoint(size.width, 24, 28, 16),
            fontWeight: FontWeight.w300,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(AntDesign.linkedin_square, color: Colors.black54),
              onPressed: () {
                js.context.callMethod(
                    "open", ["https://www.linkedin.com/in/md-minhaj-ahmmed-5982419b/"]);
              },
            ),
            IconButton(
              icon: Icon(AntDesign.facebook_square, color: Colors.black54),
              onPressed: () {
                js.context.callMethod(
                    "open", ["https://www.facebook.com/r.a.minhaj.94/"]);
              },
            ),
            IconButton(
              icon: Icon(AntDesign.github, color: Colors.black54),
              onPressed: () {
                js.context.callMethod(
                    "open", ["https://github.com/ahmedminhaj"]);
              },
            )
          ],
        ),
      ],
    );
  }
}
