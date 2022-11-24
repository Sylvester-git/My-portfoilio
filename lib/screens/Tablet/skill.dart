import 'package:flutter/material.dart';

import '../../Widgets/skillcard.dart';
import '../../constants/skills.dart';

class TabletSkillscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 550,
        //color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 30, 0, 10),
              child: Text(
                'Skill Levels',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
                height: 400,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 35,
                ),
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: skills.length,
                    itemBuilder: (context, i) {
                      return SkillCardwidget(
                        progresspercentage: skills[i].progresspercentage,
                        skilltitle: skills[i].skilltitle,
                        svgurl: skills[i].svgurl,
                      );
                    }))
          ],
        ));
  }
}
