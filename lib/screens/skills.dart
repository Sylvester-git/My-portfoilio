import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/skillbar.dart';
import 'package:my_portfolio/models/skillbar.dart';
import '../constants/colors.dart';

class Skillscsreen extends StatelessWidget {
  List<skillbar> skills = [
    skillbar(skilltitle: 'Flutter', progresspercentage: 34),
    skillbar(skilltitle: 'Python', progresspercentage: 89),
    skillbar(skilltitle: 'C/C++', progresspercentage: 54),
    skillbar(skilltitle: 'Arduino', progresspercentage: 20)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 600,
        //color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 30, 0, 10),
              child: Text(
                'Skill Levels',
                style: TextStyle(
                  fontSize: 40,
                  color: Appcolors.bcolor,
                ),
              ),
            ),
            Container(
                height: 450,
                margin: const EdgeInsets.only(
                  top: 10,
                  left: 35,
                ),
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 10,
                      );
                    },
                    itemCount: skills.length,
                    itemBuilder: (context, i) {
                      return Skillbarwidget(
                        progresspercentage: skills[i].progresspercentage,
                        skilltitle: skills[i].skilltitle,
                      );
                    }))
          ],
        ));
  }
}
