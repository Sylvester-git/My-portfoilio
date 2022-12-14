import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';
import '../../constants/contact.dart';

class TabletHomescreen extends StatelessWidget {
  const TabletHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
        top: 30,
      ),
      height: 350,
      // color: Colors.amber,
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
          horizontal: 30,
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            SelectableText.rich(
              TextSpan(
                  text: 'WELCOME TO MY PORTFOLIO\n',
                  style: GoogleFonts.quicksand(
                    color: Appcolors.bcolor,
                    fontWeight: FontWeight.w400,
                    fontSize: 26,
                  ),
                  children: [
                    TextSpan(
                      text: '\nSylvester-Paul David',
                      style: GoogleFonts.quicksand(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Appcolors.bcolor,
                      ),
                    ),
                  ]),
            ),
            const SizedBox(
              height: 10,
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
              height: 30,
            ),
            contactme()
          ],
        ),
      ),
    );
  }
}
