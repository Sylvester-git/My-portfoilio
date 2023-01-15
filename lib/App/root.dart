import 'package:flutter/material.dart';
import '../packages.dart';
import 'Core/screens/screensExports.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileView(),
      desktop: DesktopView(),
      tablet: TabletView(),
    );
  }
}
