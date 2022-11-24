import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/appbar.dart';
import 'package:my_portfolio/screens/Desktop/Home.dart';
import 'package:my_portfolio/screens/Desktop/about.dart';
import 'package:my_portfolio/screens/Desktop/services.dart';
import 'package:my_portfolio/screens/Desktop/skills.dart';
import './constants/colors.dart';

class HomepageDesktop extends StatelessWidget {
  List<Widget> screens = [
    const DesktopHomescreen(),
    DesktopAboutscreen(),
    DesktopServicesscreen(),
    DesktopSkillscsreen(),
  ];
  ScrollController listviewcontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customappbar(context),
      body: Container(
          color: Appcolors.wbgcolor,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
             
              controller: listviewcontroller,
              key: ValueKey(screens.length),
              itemCount: screens.length,
              itemBuilder: (context, index) {
                return screens[index];
              })),
    );
  }
}
