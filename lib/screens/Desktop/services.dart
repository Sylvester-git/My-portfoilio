import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/servicecard.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/models/services.dart';

class DesktopServicesscreen extends StatelessWidget {
  List<services> my_services = [
    services(
        servicename: 'Cross Platform Mobile Application Development.',
        toolused: 'Flutter and Firebase',
        imageurl:
            'https://images.pexels.com/photos/4549408/pexels-photo-4549408.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
    services(
        servicename: 'Website Development.',
        toolused: 'Flutter',
        imageurl:
            'https://images.pexels.com/photos/34600/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
    services(
        servicename: 'Machine learning and AI development.',
        toolused: 'C++  and Python',
        imageurl:
            'https://images.pexels.com/photos/8386440/pexels-photo-8386440.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 600,
        //color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(35, 30, 0, 10),
              child: Text(
                'My services include',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Container(
              height: 400,
              margin: const EdgeInsets.only(
                top: 10,
                left: 35,
              ),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: my_services.length,
                  itemBuilder: (context, i) {
                    return Servicecard(
                      servicename: my_services[i].servicename,
                      toolused: my_services[i].toolused,
                      imageurl: my_services[i].imageurl,
                    );
                  }),
            )
          ],
        ));
  }
}
