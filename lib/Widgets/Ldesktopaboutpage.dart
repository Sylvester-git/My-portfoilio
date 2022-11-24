import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> imageurl = [
  'https://images.pexels.com/photos/4246446/pexels-photo-4246446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/1865131/pexels-photo-1865131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/4792733/pexels-photo-4792733.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
  'https://images.pexels.com/photos/1142941/pexels-photo-1142941.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/6153738/pexels-photo-6153738.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
];
Widget Ldesktopaboutpage(BuildContext context) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        padding: const EdgeInsets.all(20),
        // color: Colors.red,
        height: 390,
        width: MediaQuery.of(context).size.width * 0.44,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
                toolbarOptions: const ToolbarOptions(
                  copy: true,
                  selectAll: true,
                  paste: true,
                  cut: true,
                ),
                'About Me',
                textAlign: TextAlign.center,
                style: GoogleFonts.varelaRound(
                  fontSize: 30,
                  color: Appcolors.bcolor,
                )),
            const SizedBox(
              height: 20,
            ),
            SelectableText(
              'I am a Flutter Developer from Nigeria with over 2 years of experience using flutter.\nI am well versed in UI designing using flutter, state management using bloc, database management using firbase, app logic using dart programming language, and also using the flutter packages to bring dream app ideas to life.',
              style: GoogleFonts.varelaRound(
                  fontSize: 24, color: Appcolors.bcolor),
            )
          ],
        ),
      ),
      const Expanded(
        child: SizedBox(
          width: 50,
        ),
      ),
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Appcolors.overlay,
            border: Border.all(
              color: Colors.blue.shade400,
              width: 1,
            ),
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
                      child: CachedNetworkImage(
                        imageUrl: imageurl[0],
                        imageBuilder: (context, imageProvider) {
                          return Image.network(
                            imageurl[0],
                            fit: BoxFit.cover,
                          );
                        },
                        width: double.infinity,
                        placeholder: (context, url) {
                          return Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          );
                        },
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: imageurl[1],
                        imageBuilder: (context, imageProvider) {
                          return Image.network(
                            imageurl[1],
                            fit: BoxFit.cover,
                          );
                        },
                        width: double.infinity,
                        placeholder: (context, url) {
                          return Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          );
                        },
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: imageurl[2],
                        imageBuilder: (context, imageProvider) {
                          return Image.network(
                            imageurl[2],
                            fit: BoxFit.cover,
                          );
                        },
                        width: double.infinity,
                        placeholder: (context, url) {
                          return Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          );
                        },
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: imageurl[3],
                        imageBuilder: (context, imageProvider) {
                          return Image.network(
                            imageurl[3],
                            fit: BoxFit.cover,
                          );
                        },
                        width: double.infinity,
                        placeholder: (context, url) {
                          return Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          );
                        },
                      ))),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl: imageurl[4],
                        imageBuilder: (context, imageProvider) {
                          return Image.network(
                            imageurl[4],
                            fit: BoxFit.cover,
                          );
                        },
                        width: double.infinity,
                        placeholder: (context, url) {
                          return Center(
                            child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator(
                                color: Colors.lightBlue.shade300,
                              ),
                            ),
                          );
                        },
                      ))),
            ],
            options: CarouselOptions(
              scrollPhysics: const NeverScrollableScrollPhysics(),
              aspectRatio: 16 / 9,
              height: 600,
              enlargeCenterPage: true,
              initialPage: 0,
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          )),
    ],
  );
}