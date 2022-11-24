import 'package:flutter/material.dart';
import '../../constants/services.dart';
import '../../Widgets/servicecard.dart';

class TabletServicescreen extends StatelessWidget {
  const TabletServicescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        height: 525,
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
