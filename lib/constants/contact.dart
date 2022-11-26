import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/Widgets/contactmecontainer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;

whatsappcontact() async {
  final Uri whatsappnumber = Uri.parse('https://wa.me/+2347036600085');
  if (kIsWeb) {
    html.window.open('https://wa.me/+2347036600085', '_blank');
  } else {
    launchUrl(whatsappnumber);
  }
}

linkind() async {
  final Uri linkedin = Uri.parse(
      'https://www.linkedin.com/in/sylvester-paul-ebinehita-1176ab221');

  if (kIsWeb) {
    html.window.open(
        'https://www.linkedin.com/in/sylvester-paul-ebinehita-1176ab221',
        '_blank');
  } else {
    launchUrl(linkedin);
  }
}

github() async {
  final Uri git_hub = Uri.parse('https://github.com/Itzspd?tab=repositories');
  if (kIsWeb) {
    html.window.open(
      'https://github.com/Itzspd?tab=repositories',
      '_blank',
    );
  } else {
    launchUrl(git_hub);
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
      contactmecontainer(
        github,
        FontAwesomeIcons.github,
      ),
    ],
  );
}
