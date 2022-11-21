import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 500,
      //color: Colors.amber,
      child: Row(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(5),
            //   color: Colors.lightBlue.shade200.withOpacity(0.2),
            // ),
            height: 300,
            width: 400,
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Hello, my name is',
                  style: TextStyle(fontSize: 24, color: Appcolors.bcolor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Sylvester-Paul David',
                  style: TextStyle(fontSize: 40, color: Appcolors.bcolor),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "And I'm a ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Appcolors.bcolor,
                      ),
                    ),
                    const Text(
                      "Flutter Developer",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  child: Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.lightBlue,
                      ),
                      child: Center(
                        child: Text(
                          'Hire me',
                          style: TextStyle(
                            color: Appcolors.bcolor,
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 150,
          ),
          Expanded(
            child: Container(
              height: 490,
              child: FlutterLogo(
                size: 150,
                textColor: Appcolors.bcolor,
                style: FlutterLogoStyle.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
