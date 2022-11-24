import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/appbar.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/Tablet/Home.dart';
import 'package:my_portfolio/screens/Tablet/about.dart';
import 'package:my_portfolio/screens/Tablet/services.dart';
import 'package:my_portfolio/screens/Tablet/skill.dart';

class HomepageTablet extends StatelessWidget {
  List<Widget> Tabletscreens = [
    const TabletHomescreen(),
    const TabletAboutscreen(),
    const TabletServicescreen(),
    TabletSkillscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.wbgcolor,
      appBar: customappbar(context),
      body: Container(
          color: Appcolors.wbgcolor,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: Tabletscreens.length,
              itemBuilder: (context, index) {
                return Tabletscreens[index];
              })),
    );
  }
}
