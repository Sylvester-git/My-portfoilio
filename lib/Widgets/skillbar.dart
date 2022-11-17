import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Skillbarwidget extends StatelessWidget {
  double progresspercentage;
  double progresscomplete;

  String skilltitle;
  Skillbarwidget({
    super.key,
    required this.skilltitle,
    required this.progresspercentage,
    this.progresscomplete = 600,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 0, right: 30),
      height: 100,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 150,
            //color: Colors.red,
            child: SelectableText(
              skilltitle,
              style: TextStyle(
                color: Appcolors.bcolor,
                fontSize: 30,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 50,
            margin: const EdgeInsets.only(top: 30),
            //color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: progresscomplete,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Appcolors.progressbarincomplete,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: (progresspercentage / 100) * progresscomplete,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Appcolors.progressbarcomplete,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 300,
                        top: 6.25,
                        child: SelectableText(
                          '${progresspercentage}%',
                          style: TextStyle(
                            color: Appcolors.bcolor,
                          ),
                        )),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    width: 600,
                    height: 20,
                    child: SelectableText(
                      (progresspercentage < 0 || progresspercentage <= 45)
                          ? 'Beginner'
                          : (progresspercentage <= 46 ||
                                  progresspercentage <= 75)
                              ? 'Intermediate'
                              : (progresspercentage <= 76 ||
                                      progresspercentage <= 100)
                                  ? 'Expert'
                                  : '',
                      style: TextStyle(
                        fontSize: 20,
                        color: Appcolors.bcolor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
