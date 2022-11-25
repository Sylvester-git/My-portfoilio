import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/colors.dart';

PreferredSizeWidget customappbar(context) {
  return AppBar(
    elevation: 0,
    backgroundColor: Appcolors.wbgcolor,
    title: ScreenTypeLayout(
      mobile: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Portfo',
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              TextSpan(
                text: 'lio',
                style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                      color: Colors.blue.shade400,
                    ),
              )
            ]),
          )),
      desktop: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Portfo',
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              TextSpan(
                text: 'lio',
                style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                      color: Colors.blue.shade400,
                    ),
              )
            ]),
          )),
      tablet: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'Portfo',
                style: Theme.of(context).appBarTheme.titleTextStyle,
              ),
              TextSpan(
                text: 'lio',
                style: Theme.of(context).appBarTheme.titleTextStyle!.copyWith(
                      color: Colors.blue.shade400,
                    ),
              )
            ]),
          )),
    ),
    actions: [
      ScreenTypeLayout(
        tablet: Container(
          margin: const EdgeInsets.only(right: 20),
          child: FlutterLogo(
            size: 150,
            textColor: Appcolors.bcolor,
            style: FlutterLogoStyle.horizontal,
          ),
        ),
        mobile: Container(),
        desktop: Container(),
      )
    ],
  );
}
