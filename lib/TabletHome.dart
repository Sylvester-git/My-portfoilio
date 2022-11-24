import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/screens/Tablet/Home.dart';
import 'package:my_portfolio/screens/Tablet/about.dart';
import 'package:my_portfolio/screens/Tablet/services.dart';

class HomepageTablet extends StatelessWidget {
  const HomepageTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.wbgcolor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Appcolors.wbgcolor,
        title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RichText(
              text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: 'Portfo',
                  style: Theme.of(context).appBarTheme.titleTextStyle,
                ),
                TextSpan(
                  text: 'lio',
                  style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                        color: Colors.blue.shade400,
                      ),
                )
              ]),
            )),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: FlutterLogo(
              size: 150,
              textColor: Appcolors.bcolor,
              style: FlutterLogoStyle.horizontal,
            ),
          ),
        ],
      ),
      body: Container(
          color: Appcolors.wbgcolor,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) {
                return TabletServicescreen();
              })),
    );
  }
}
