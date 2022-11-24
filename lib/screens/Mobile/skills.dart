import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/skillcard.dart';
import 'package:my_portfolio/constants/skills.dart';

class Mobileskillscreen extends StatelessWidget {
  const Mobileskillscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 5,
              ),
              child: Text(
                'Skill Levels',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: 24,
                    ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              //  color: Colors.yellow,
              height: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              width: MediaQuery.of(context).size.width,
              child: SkillCardwidget(
                skilltitle: skills[0].skilltitle,
                svgurl: skills[0].svgurl,
                progresspercentage: skills[0].progresspercentage,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              // color: Colors.yellow,
              height: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              width: MediaQuery.of(context).size.width,
              child: SkillCardwidget(
                skilltitle: skills[1].skilltitle,
                svgurl: skills[1].svgurl,
                progresspercentage: skills[1].progresspercentage,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              // color: Colors.yellow,
              height: 400,
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
              ),
              width: MediaQuery.of(context).size.width,
              child: SkillCardwidget(
                skilltitle: skills[2].skilltitle,
                svgurl: skills[2].svgurl,
                progresspercentage: skills[2].progresspercentage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
