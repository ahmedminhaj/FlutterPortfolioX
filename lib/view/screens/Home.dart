import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/bgPainter.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:flutter_web_portfolio/utils/cursor.dart';
import 'package:flutter_web_portfolio/view/widgets/HeroBtn.dart';
import 'package:flutter_web_portfolio/view/widgets/contact.dart';
import 'package:flutter_web_portfolio/view/widgets/experience.dart';
import 'package:flutter_web_portfolio/view/widgets/skill_view.dart';
import 'package:flutter_web_portfolio/view/widgets/works.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isTablet = size.width > 800;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: BackgroundPainter(),
          ),
          ListView(
            children: [
              _appBar(size, isTablet),
              Wrap(
                alignment: WrapAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: [
                  Container(
                    height: breakpoint(size.width, size.height * .7, 200, 180),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: breakpoint(
                          size.width,
                          CrossAxisAlignment.start,
                          CrossAxisAlignment.center,
                          CrossAxisAlignment.center),
                      mainAxisAlignment: breakpoint(
                          size.width,
                          MainAxisAlignment.center,
                          MainAxisAlignment.center,
                          MainAxisAlignment.end),
                      children: [
                        Text(
                          "Minhaj Ahmmed",
                          style: GoogleFonts.asap(
                            fontSize: breakpoint(size.width, 60, 45, 30),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 6,
                          ),
                        ),
                        Text(
                          "Front-end engineer",
                          style: GoogleFonts.asap(
                            fontSize: breakpoint(size.width, 20, 18, 14),
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            HeroBtn(title: "Github", link: "https://github.com/ahmedminhaj",),
                            SizedBox(width: 20),
                            HeroBtn(
                              title: "Contact",
                              isOutline: true,
                              link: "https://www.linkedin.com/in/md-minhaj-ahmmed-5982419b/",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/pic1.png",
                    fit: BoxFit.cover,
                    width: 460,
                    height: 400,
                  ),
                ],
              ),
              Skills(),
              Experience(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Works(),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ContactView()),
            ],
          ),
          isTablet
              ? Positioned(
                  left: 120,
                  bottom: 60,
                  child: Cursor(
                    child: Container(
                      width: 45,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF3753AA).withOpacity(.2),
                              offset: Offset(10, 10),
                              blurRadius: 10)
                        ],
                      ),
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  _appBar(Size size, bool isTablet) => Container(
        height: 60,
      );
}
