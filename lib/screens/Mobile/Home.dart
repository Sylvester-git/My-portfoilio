import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/contact.dart';

import '../../constants/colors.dart';

class MobileHomescreen extends StatelessWidget {
  const MobileHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        top: 20,
      ),
      height: 300,
      //color: Colors.amber,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Appcolors.overlay,
          border: Border.all(
            color: Appcolors.bordercolor,
            width: 1,
          ),
        ),
        height: 300,
        width: 300,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            SelectableText.rich(
              TextSpan(
                  text: 'WELCOME TO MY PORTFOLIO\n',
                  style: GoogleFonts.quicksand(
                    color: Appcolors.bcolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: '\nSylvester-Paul\n',
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.bcolor,
                      ),
                    ),
                    TextSpan(
                      text: 'David',
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.bcolor,
                      ),
                    )
                  ]),
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.arrowRight,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                SelectableText(
                  'Flutter Developer',
                  style: GoogleFonts.quicksand(
                    color: Appcolors.bcolor,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            contactme()
          ],
        ),
      ),
    );
  }
}
