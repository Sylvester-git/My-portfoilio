import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/contact.dart';

class DesktopHomescreen extends StatelessWidget {
  const DesktopHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 600,
      //color: Colors.amber,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Appcolors.overlay,
              border: Border.all(
                color: Appcolors.bordercolor,
                width: 1,
              ),
            ),
            height: 350,
            width: 500,
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
                      text: 'WELCOME TO MY PORTFOLIO \n',
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
          const SizedBox(
            width: 150,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 30),
              child: FlutterLogo(
                size: 150,
                textColor: Appcolors.bcolor,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
