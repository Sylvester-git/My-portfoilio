import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './packages.dart';
import 'App/root.dart';
import 'App/Core/constants/constantsExports.dart';

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
      theme: apptheme(),
      debugShowCheckedModeBanner: false,
      home: const RootApp(),
    );
  }
}
