import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants/colors.dart';

// ignore: non_constant_identifier_names
Widget DestopTabletSkillcard(
  BuildContext context,
  String svgurl,
  String skilltitle,
  double progresspercentage,
  double progresscomplete,
) {
  return Container(
    margin: const EdgeInsets.only(
      right: 20,
    ),
    height: 300,
    width: 400,
    decoration: BoxDecoration(
      color: Appcolors.overlay,
      border: Border.all(
        color: Colors.blue.shade400,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //image
        Container(
            width: 400,
            height: 250,
            decoration: const BoxDecoration(
                color: Appcolors.wbgcolor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            child: SvgPicture.network(
              svgurl,
              fit: BoxFit.contain,
            )),
        //skill title
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 8,
            bottom: 10,
          ),
          child: Text(
            skilltitle,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        //Skill Information
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 8,
          ),
          child: Row(
            children: [
              CircularPercentIndicator(
                radius: 25,
                lineWidth: 2,
                backgroundColor: Appcolors.wbgcolor,
                progressColor: Appcolors.progressbarcomplete,
                center: Text('$progresspercentage%'),
                percent: (progresscomplete / (progresscomplete * 100)) *
                    progresspercentage,
              ),
              const Expanded(
                  child: SizedBox(
                width: 10,
              )),
              Padding(
                padding: const EdgeInsets.only(
                  right: 8,
                ),
                child: Text(
                  (progresspercentage <= 0 || progresspercentage <= 45)
                      ? 'Beginner'
                      : (progresspercentage <= 46 || progresspercentage <= 74)
                          ? 'Intermediate'
                          : 'Expert',
                  style: Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
