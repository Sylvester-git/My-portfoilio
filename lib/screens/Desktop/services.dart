import 'package:flutter/material.dart';
import 'package:my_portfolio/Widgets/servicecard.dart';
import '../../constants/services.dart';

class DesktopServicesscreen extends StatelessWidget {
  const DesktopServicesscreen({super.key});

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
              padding: const EdgeInsets.fromLTRB(35, 30, 0, 10),
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
