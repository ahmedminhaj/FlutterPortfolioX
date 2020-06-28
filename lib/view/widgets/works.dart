import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/utils/breakpoint.dart';
import 'package:flutter_web_portfolio/view/widgets/project_card.dart';
import 'package:google_fonts/google_fonts.dart';

class Works extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height:70),
        Text(
          "Recent Works",
          style: GoogleFonts.asap(
            fontSize: breakpoint(size.width, 40, 30, 22),
            fontWeight: FontWeight.w500,
            letterSpacing: 4,
          ),
        ),
        SizedBox(height:30),
        Wrap(
          spacing: 45,
          runSpacing: 30,
          alignment: WrapAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            ProjectCard(
              title: "Zerometry",
              type: "Office management system",
              technology: "Dart, Flutter, API, PHP",
              link: "https://bitbucket.org/devnindonew/devnindo-zerometry/src/master/office-manager/",
            ),
            ProjectCard(
              title: "Notifier",
              type: "Remainder Mobile app",
              technology: "Dart, Flutter, API, Java native",
              link: "https://github.com/ahmedminhaj/notifier",),
            ProjectCard(
              title: "Forcast",
              type: "Weather Forcast App",
              technology: "Dart, Flutter, RESTful API, JSON",
              link: "https://github.com/ahmedminhaj/forecast",),
            ProjectCard(
              title: "TaskToDo",
              type: "Time plan App",
              technology: "Dart, Flutter, SQFlite, JSON",
              link: "https://github.com/ahmedminhaj/taskTodo",),
            ProjectCard(
              title: "Auto Traffic",
              type: "Traffic Automation System",
              technology: "Python, OpenCV, arduino",
              link: "https://github.com/ahmedminhaj/traffic-control-system-with-openCV",),
            ProjectCard(
              title: "Jattri",
              type: "Rideshare App",
              technology: "NodeJS, Firebase, Sass, API",
              link: "https://playmaker.com.bd/covid-19_information/",),
            ProjectCard(
              title: "FluClock",
              type: "Clock App",
              technology: "Dart, flutter",
              link: "https://github.com/ahmedminhaj/FluClock",),
            ProjectCard(
              title: "COVID Corner",
              type: "Corona helpline center",
              technology: "WordPress, API",
              link: "https://playmaker.com.bd/covid-19_information/",),
            ProjectCard(
              title: "GeoTracker",
              type: "Sales Tracker App",
              technology: "Dart, Flutter, Location Service",
              link: "https://github.com/ahmedminhaj/geoLocation",),
          ],
        ),
      ],
    );
  }
}
