import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:flutter_web_portfolio/view/widgets/HeroBtn.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectCard extends StatelessWidget {
  final String title, type, technology, link ;
  ProjectCard({this.title, this.type, this.technology, this.link});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(11.0),
      width: breakpoint(size.width, 300, 255, 220),
      height: breakpoint(size.width, 200, 185, 170),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color(0xFF3753AA).withOpacity(.2),
              offset: Offset(10, 10),
              blurRadius: 10)
        ],
      ),
      child: Column(
        children: [
          SizedBox(height:8),
          Text(
            title,
            style: GoogleFonts.asap(
              fontSize: breakpoint(size.width, 26, 22, 18),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height:12),
          Text(
            type,
            style: GoogleFonts.asap(
              fontSize: breakpoint(size.width, 22, 18, 16),
              color: Colors.black38,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height:10),
          Text(
            technology,
            style: GoogleFonts.asap(
              fontSize: breakpoint(size.width, 20, 16, 14),
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height:18),
          HeroBtn(
            title: "github",
            isOutline: true,
            link: link,
          ),
        ],
      ),
    );
  }
}
