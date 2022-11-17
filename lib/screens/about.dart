import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_portfolio/constants/colors.dart';

class Aboutscreen extends StatelessWidget {
  List<String> imageurl = [
    'https://images.pexels.com/photos/4246446/pexels-photo-4246446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1865131/pexels-photo-1865131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/4792733/pexels-photo-4792733.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1142941/pexels-photo-1142941.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/6153738/pexels-photo-6153738.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];

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
                color: Appcolors.wbglight,
              ),
              height: 490,
              width: 490,
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CarouselSlider(
                items: [
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageurl[0],
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageurl[1],
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageurl[2],
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageurl[3],
                          fit: BoxFit.cover,
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imageurl[4],
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
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
              )),
          const Expanded(
            child: SizedBox(
              width: 100,
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              padding: const EdgeInsets.all(20),
              height: 390,
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  SelectableText(
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      selectAll: true,
                      paste: true,
                      cut: true,
                    ),
                    'About Me',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      color: Appcolors.bcolor,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      selectAll: true,
                      paste: true,
                      cut: true,
                    ),
                    'I am a Flutter Developer from Nigeria.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Appcolors.bcolor,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      selectAll: true,
                      paste: true,
                      cut: true,
                    ),
                    'I have been working as a Flutter Developer for 2 years.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Appcolors.bcolor,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      selectAll: true,
                      paste: true,
                      cut: true,
                    ),
                    'When i am not on my laptop coding, I enjoy swimming, Working out, Calisthenics, Reading and working on Arduino Projects.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Appcolors.bcolor,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText(

                    toolbarOptions: ToolbarOptions(

                      copy: true,
                      selectAll: true,
                      paste: true,
                      cut: true,
                    ),
                    'Currently, I am learning to use C++ , Python and R for machine learning , deep learning and AI.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Appcolors.bcolor,
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
