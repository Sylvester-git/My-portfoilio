import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget ServiceCard_D_T(String imageurl, BuildContext context, String servicename, String toolused) {
  return   Container(
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolors.overlay,
        border: Border.all(
          color: Colors.blue.shade400,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          //image
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: imageurl,
                  imageBuilder: (context, imageProvider) {
                    return Image.network(
                      imageurl,
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
                )),
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
                  style: Theme.of(context).textTheme.headline6,
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
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
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