import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/Home.dart';
import 'package:my_portfolio/screens/about.dart';
import 'package:my_portfolio/screens/services.dart';
import 'package:my_portfolio/screens/skills.dart';
import './constants/colors.dart';

class Homepage extends StatelessWidget {
  List<Widget> screens = [
    const Homescreen(),
    Aboutscreen(),
    Servicesscreen(),
    Skillscsreen(),
  ];
  ScrollController listviewcontroller = ScrollController();
  // void scrollup() {
  //   final double start = 0;
  //   listviewcontroller.animateTo(
  //       duration: const Duration(milliseconds: 500),
  //       start,
  //       curve: Curves.easeIn);
  // }

  // void scrolldown() {
  //   final double end = listviewcontroller.position.maxScrollExtent;

  //   listviewcontroller.animateTo(end,
  //       duration: const Duration(milliseconds: 500), curve: Curves.easeIn);

  //   print(end.toString());
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Appcolors.wbgcolor,
          title: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: RichText(
                text: const TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: 'Portfo',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      )),
                  TextSpan(
                      text: 'lio',
                      style: TextStyle(fontSize: 25, color: Colors.blue))
                ]),
              )),
          actions: [
            Container(
              margin: const EdgeInsets.only(
                right: 30,
              ),
              width: 300,
              height: 20,
              // color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    //onTap: scrollup,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      height: 40,
                      width: 70,
                      child: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(color: Appcolors.bcolor),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'About',
                          style: TextStyle(color: Appcolors.bcolor),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Services',
                          style: TextStyle(color: Appcolors.bcolor),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: MouseRegion(
                      child: Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            'Skills',
                            style: TextStyle(color: Appcolors.bcolor),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ]),
      body: Container(
          color: Appcolors.wbgcolor,
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              controller: listviewcontroller,
              key: ValueKey(screens.length),
              itemCount: screens.length,
              itemBuilder: (context, index) {
                return screens[index];
              })
          // PageView.builder(
          //   // physics: const NeverScrollableScrollPhysics(),
          //   controller: controller,
          //   onPageChanged: (value) {
          //     setState(() {
          //       pageindex = value;
          //     });
          //   },
          //   scrollDirection: Axis.vertical,
          //   itemCount: screens.length,
          //   itemBuilder: (context, index) {
          //     return screens[index];
          //   },
          // ),
          ),
    );
  }
}
