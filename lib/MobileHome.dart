import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/appbar.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/Mobile/about.dart';
import 'package:my_portfolio/screens/Mobile/services.dart';
import 'package:my_portfolio/screens/Mobile/skills.dart';
import 'screens/Mobile/Home.dart';

class HomepageMobile extends StatelessWidget {
  List<Widget> mobilescreens = [
    MobileHomescreen(),
    MobileAboutscreen(),
    Mobileservicescreen(),
    Mobileskillscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.wbgcolor,
      appBar: customappbar(context),
      body: SafeArea(
        left: false,
        top: false,
        right: false,
        child: SingleChildScrollView(
          child: Container(
              color: Appcolors.wbgcolor,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: mobilescreens.length,
                itemBuilder: (context, index) {
                  return mobilescreens[index];
                },
              )),
        ),
      ),
    );
  }
}
