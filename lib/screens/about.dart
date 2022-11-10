import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class Aboutscreen extends StatelessWidget {
  const Aboutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 600,
      // color: Colors.amber,
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade100.withOpacity(0.1),
              ),
              height: 490,
              width: 490,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Placeholder(
                child: CarouselSlider(
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: FlutterLogo(
                          style: FlutterLogoStyle.horizontal,
                          textColor: Colors.grey,
                          size: 300,
                        )),
                      );
                    });
                  }).toList(),
                  options: CarouselOptions(
                    scrollPhysics: NeverScrollableScrollPhysics(),
                    aspectRatio: 16 / 9,
                    height: 600,
                    enlargeCenterPage: true,
                    initialPage: 0,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 3),
                    autoPlayCurve: Curves.fastOutSlowIn,
                  ),
                ),
              )),
          const Expanded(
            child: SizedBox(
              width: 100,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade100.withOpacity(0.1),
              ),
              padding: const EdgeInsets.all(20),
              height: 390,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'About Me',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'I am a Flutter Developer from Nigeria.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'I have been working as a Flutter Developer for 2 years.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'When i am not on my laptop coding, I enjoy swimming, Working out, Reading and working on Arduino Projects.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Currently, i am learning to use C++ for machine learning and AI.',
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
