import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widgets/contactmecontainer.dart';
import 'package:url_launcher/url_launcher.dart';

whatsappcontact() async {
  final Uri whatsappnumber = Uri.parse('https://wa.me/+2347036600085');
  if (await canLaunchUrl(whatsappnumber)) {
    await launchUrl(whatsappnumber);
  } else {
    throw 'could not load';
  }
}

linkind() async {
  final Uri linkedin = Uri.parse(
      'https://www.linkedin.com/in/sylvester-paul-ebinehita-1176ab221');
  if (await canLaunchUrl(linkedin)) {
    await launchUrl(linkedin);
  } else {
    throw 'could not launch';
  }
}

github() async {
  final Uri git_hub = Uri.parse('https://github.com/Itzspd?tab=repositories');
  if (await canLaunchUrl(git_hub)) {
    await launchUrl(git_hub);
  } else {
    throw 'could not launch';
  }
}

Widget contactme() {
  return Row(
    children: [
      contactmecontainer(
        whatsappcontact,
        FontAwesomeIcons.whatsapp,
      ),
      const SizedBox(
        width: 10,
      ),
      contactmecontainer(
        linkind,
        FontAwesomeIcons.linkedin,
      ),
      const SizedBox(
        width: 10,
      ),
      contactmecontainer(github, FontAwesomeIcons.github),
    ],
  );
}
