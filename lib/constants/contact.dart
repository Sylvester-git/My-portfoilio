import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widgets/contactmecontainer.dart';
import 'package:url_launcher/url_launcher.dart';

whatsappcontact() async {
  final Uri whatsappnumber = Uri.parse('https://wa.me/+2347036600085');

  await launchUrl(whatsappnumber);
}

linkind() async {
  final Uri linkedin = Uri.parse(
      'https://www.linkedin.com/in/sylvester-paul-ebinehita-1176ab221');

  await launchUrl(linkedin);
}

github() async {
  final Uri git_hub = Uri.parse('https://github.com/Itzspd?tab=repositories');

  await launchUrl(git_hub);
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
      contactmecontainer(
        github,
        FontAwesomeIcons.github,
      ),
    ],
  );
}
