import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/cursor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:js' as js;

class HeroBtn extends StatefulWidget {
  final title, link;
  final bool isOutline;
  bool hover = false;

  HeroBtn({this.title, this.link, this.isOutline = false});

  @override
  _HeroBtnState createState() => _HeroBtnState();
}

class _HeroBtnState extends State<HeroBtn> {
  @override
  Widget build(BuildContext context) {
    return Cursor(
      onHover: (value) {
        setState(() {
          widget.hover = value;
        });
      },
      child: InkWell(
        onTap: () {
                js.context.callMethod(
                    "open", [widget.link]);
              },
        child: Container(
          width: 115,
          height: 40,
          decoration: BoxDecoration(
            color: !widget.isOutline
                ? !widget.hover ? Colors.white : Colors.black
                : !widget.hover ? Colors.transparent : Colors.black,
            border: !widget.isOutline
                ? null
                : Border.all(
                    color: Colors.black,
                    width: .2,
                  ),
          ),
          child: Center(
            child: Text(
              widget.title.toUpperCase(),
              style: GoogleFonts.asap(
                color: !widget.hover ? Colors.black : Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
