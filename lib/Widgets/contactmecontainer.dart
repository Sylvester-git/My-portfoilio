import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';

Widget contactmecontainer(Function()? action, IconData? icon) {
  return ElevatedButton(
    onPressed: action,
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blue.shade100,
      padding: const EdgeInsets.all(20),
    ),
    child: Center(
      child: FaIcon(
        icon,
        color: Appcolors.bcolor,
      ),
    ),
  );
}
