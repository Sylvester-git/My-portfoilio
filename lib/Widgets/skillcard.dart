import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'desktop_tablet_skillcard.dart';
import 'mobileskillcard.dart';

class SkillCardwidget extends StatelessWidget {
  double progresspercentage;
  double progresscomplete;
  String svgurl;

  String skilltitle;
  SkillCardwidget({
    super.key,
    required this.skilltitle,
    required this.svgurl,
    required this.progresspercentage,
    this.progresscomplete = 600,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileskillcard(
        context,
        svgurl,
        skilltitle,
        progresspercentage,
        progresscomplete,
      ),
      tablet: DestopTabletSkillcard(
        context,
        svgurl,
        skilltitle,
        progresspercentage,
        progresscomplete,
      ),
      desktop: DestopTabletSkillcard(
        context,
        svgurl,
        skilltitle,
        progresspercentage,
        progresscomplete,
      ),
    );
  }
}
