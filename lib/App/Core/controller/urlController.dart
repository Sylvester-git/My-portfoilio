import '../services/servicesExports.dart';

class Urlcontroller {
  Urlcontroller._();

  static dynamic openWhatsapp() => UrlHandler.whatsapp();

  static dynamic openGithub() => UrlHandler.github();

  static dynamic  openLinkedIn() => UrlHandler.linkedin();
}
