import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Future<void> whatsappcontact() async {
  String whatsappnumber = 'https://wa.me/+2347036600085';
  if (await canLaunchUrlString(whatsappnumber)) {
    await launchUrlString(whatsappnumber);
  } else {
    throw 'could not load';
  }
}

Future<void> linkind() async {
  String linkedin =
      'https://www.linkedin.com/in/sylvester-paul-ebinehita-1176ab221';
  if (await canLaunchUrlString(linkedin)) {
    await launchUrlString(linkedin);
  } else {
    throw 'could not launch';
  }
}

Future<void> github() async {
  String github = 'https://github.com/Itzspd?tab=repositories';
  if (await canLaunchUrlString(github)) {
    await launchUrlString(github);
  } else {
    throw 'could not launch';
  }
}

Widget contactme() {
  return Row(
    children: const [
      IconButton(
          onPressed: whatsappcontact,
          icon: FaIcon(
            FontAwesomeIcons.whatsapp,
          )),
      IconButton(
          onPressed: linkind,
          icon: FaIcon(
            FontAwesomeIcons.linkedin,
          )),
      IconButton(
          onPressed: github,
          icon: FaIcon(
            FontAwesomeIcons.github,
          )),
    ],
  );
}
