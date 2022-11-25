import 'package:flutter/material.dart';

import 'package:my_portfolio/Widgets/skillcard.dart';
import 'package:my_portfolio/constants/skills.dart';

class Mobileskillscreen extends StatelessWidget {
  const Mobileskillscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 40,
      ),
      //  color: Colors.brown,
      child: Container(
        width: 300,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skill Levels',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 24,
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            SkillCardwidget(
              skilltitle: skills[0].skilltitle,
              svgurl: skills[0].svgurl,
              progresspercentage: skills[0].progresspercentage,
            ),
            const SizedBox(
              height: 10,
            ),
            SkillCardwidget(
              skilltitle: skills[1].skilltitle,
              svgurl: skills[1].svgurl,
              progresspercentage: skills[1].progresspercentage,
            ),
            const SizedBox(
              height: 10,
            ),
            SkillCardwidget(
              skilltitle: skills[2].skilltitle,
              svgurl: skills[2].svgurl,
              progresspercentage: skills[2].progresspercentage,
            ),
          ],
        ),
      ),
    );
  }
}
