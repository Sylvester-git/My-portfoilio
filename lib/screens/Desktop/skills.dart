import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/skillcard.dart';
import 'package:my_portfolio/models/skillsetting.dart';

class DesktopSkillscsreen extends StatelessWidget {
  List<skillSettings> skills = [
    skillSettings(
      skilltitle: 'Flutter',
      progresspercentage: 70,
      svgurl: 'https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg',
    ),
    skillSettings(
      skilltitle: 'Python',
      progresspercentage: 60,
      svgurl: 'https://www.vectorlogo.zone/logos/python/python-official.svg',
    ),
    skillSettings(
      skilltitle: 'C++',
      progresspercentage: 50,
      svgurl: 'https://cdn.worldvectorlogo.com/logos/c.svg',
    ),
    // skillSettings(skilltitle: 'Arduino', progresspercentage: 20)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 550,
        // color: Colors.red,
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
