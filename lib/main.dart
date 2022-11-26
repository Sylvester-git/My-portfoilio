import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/MobileHome.dart';
import 'package:my_portfolio/TabletHome.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'DesktopHome.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  setPathUrlStrategy();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCf8x9NWTZtRq-8_auraesl3NowTiqlz84",
    projectId: "flutter-web-portfolio-81a4e",
    messagingSenderId: "948813902887",
    appId: "1:948813902887:web:20977900323398d47f4a02",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFF0E3352),
          textTheme: TextTheme(
              headline4: GoogleFonts.varelaRound(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Appcolors.bcolor,
              ),
              headline6: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Appcolors.bcolor,
              )),
          appBarTheme: AppBarTheme(
            titleTextStyle: GoogleFonts.pacifico(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Appcolors.bcolor,
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: ScreenTypeLayout(
          mobile: HomepageMobile(),
          tablet: HomepageTablet(),
          desktop: HomepageDesktop(),
        ));
  }
}
