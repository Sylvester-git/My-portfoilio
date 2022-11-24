import 'package:flutter/material.dart';
import '../../Widgets/servicecard.dart';
import '../../constants/services.dart';

class Mobileservicescreen extends StatelessWidget {
  const Mobileservicescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
            ),
            child: Text(
              'My services include',
              style: Theme.of(context).textTheme.headline4!.copyWith(
                    fontSize: 24,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 26,
            ),
            child: Servicecard(
              servicename: my_services[0].servicename,
              toolused: my_services[0].toolused,
              imageurl: my_services[0].imageurl,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 26,
            ),
            child: Servicecard(
              servicename: my_services[1].servicename,
              toolused: my_services[1].toolused,
              imageurl: my_services[1].imageurl,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.only(
              left: 26,
            ),
            child: Servicecard(
              servicename: my_services[2].servicename,
              toolused: my_services[2].toolused,
              imageurl: my_services[2].imageurl,
            ),
          ),
        ],
      ),
    );
  }
}
