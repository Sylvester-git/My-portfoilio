import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/Home.dart';
import 'package:my_portfolio/screens/about.dart';
import 'package:my_portfolio/screens/contact.dart';
import 'package:my_portfolio/screens/services.dart';
import 'package:my_portfolio/screens/skills.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> screens = const [
    Homescreen(),
    Aboutscreen(),
    Servicesscreen(),
    Skillscsreen(),
    Contactscreen(),
  ];

  int pageindex = 0;
  PageController controller = PageController();
  bool DarkmodeOn = true;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          DarkmodeOn ? Theme.of(context).scaffoldBackgroundColor : Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF0E3352),
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: const [
              Text(
                'Portfo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Text(
                'lio',
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(
              right: 30,
            ),
            width: 400,
            height: 20,
            // color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    setState(() {
                      pageindex = 0;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: pageindex == 0
                          ? Colors.lightBlue
                          : Colors.transparent,
                    ),
                    height: 40,
                    width: 70,
                    child: const Center(
                      child: Text(
                        'Home',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    setState(() {
                      pageindex = 1;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: pageindex == 1
                          ? Colors.lightBlue
                          : Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        'About',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    setState(() {
                      pageindex = 2;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: pageindex == 2
                          ? Colors.lightBlue
                          : Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        'Services',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    setState(() {
                      pageindex = 3;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: pageindex == 3
                          ? Colors.lightBlue
                          : Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        'Skills',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(4,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    setState(() {
                      pageindex = 4;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 500),
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: pageindex == 4
                          ? Colors.lightBlue
                          : Colors.transparent,
                    ),
                    child: const Center(
                      child: Text(
                        'Contact',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        DarkmodeOn = !DarkmodeOn;
                      });
                    },
                    icon: DarkmodeOn
                        ? const Icon(
                            Icons.light_mode_rounded,
                            color: Colors.white,
                          )
                        : const Icon(
                            Icons.dark_mode_rounded,
                            color: Colors.blue,
                          ))
              ],
            ),
          )
        ],
      ),
      body: Container(
        color: const Color(0xFF0E3352),
        height: MediaQuery.of(context).size.height,
        child: PageView.builder(
          controller: controller,
          onPageChanged: (value) {
            setState(() {
              pageindex = value;
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: screens.length,
          itemBuilder: (context, index) {
            return screens[index];
          },
        ),
      ),
    );
  }
}
