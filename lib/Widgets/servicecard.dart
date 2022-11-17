import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Servicecard extends StatelessWidget {
  String servicename;
  String toolused;
  String imageurl;
  Servicecard(
      {super.key,
      required this.servicename,
      required this.toolused,
      required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: 400,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Appcolors.wbglight),
      child: Column(
        children: [
          //iamge
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageurl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 75,
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  servicename,
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 20,
                    color: Appcolors.bcolor,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Tools: ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Appcolors.bcolor,
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                      toolused,
                      style: TextStyle(
                        fontSize: 17,
                        color: Appcolors.bcolor,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
