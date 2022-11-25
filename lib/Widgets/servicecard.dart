import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/Widgets/desktop_tabletservicecard.dart';
import 'package:my_portfolio/Widgets/mobileservicecard.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Servicecard extends StatelessWidget {
  String servicename;
  String toolused;
  String imageurl;
  Servicecard(
      {super.key,
      required this.servicename,
      required this.toolused,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileservicecard(imageurl, toolused, servicename, context),
      desktop: ServiceCard_D_T(imageurl, context, servicename, toolused),
      tablet: ServiceCard_D_T(imageurl, context, servicename, toolused),
    );
  }
}
