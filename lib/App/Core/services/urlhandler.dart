import '../constants/constantsExports.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlHandler {
  UrlHandler._();

  static dynamic whatsapp() async {
    final Uri whatsappnumber = Uri.parse(
      Apptxt.whatsapplink,
    );
    if (kIsWeb) {
      html.window.open(
        Apptxt.whatsapplink,
        Apptxt.blank,
      );
    } else {
      launchUrl(whatsappnumber);
    }
  }

  static dynamic linkedin() async {
    final Uri linkedin = Uri.parse(
      Apptxt.linkedinlink,
    );

    if (kIsWeb) {
      html.window.open(
        Apptxt.linkedinlink,
        Apptxt.blank,
      );
    } else {
      launchUrl(linkedin);
    }
  }

  static dynamic github() async {
    final Uri gitHub = Uri.parse(Apptxt.githublink);
    if (kIsWeb) {
      html.window.open(
        Apptxt.githublink,
        Apptxt.blank,
      );
    } else {
      launchUrl(gitHub);
    }
  }
}
