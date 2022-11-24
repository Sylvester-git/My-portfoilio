import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/Ldesktopaboutpage.dart';
import 'package:my_portfolio/Widgets/Sdesktopaboutpage.dart';

class DesktopAboutscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 600,
      // color: Colors.amber,
      child: MediaQuery.of(context).size.width > 1160
          ? Ldesktopaboutpage(context)
          : Sdesktopaboutpage(context),
    );
  }
}
