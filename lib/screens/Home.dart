import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      height: 500,
      // color: Colors.amber,
      child: Row(
        children: [
          Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(5),
            //   color: Colors.lightBlue.shade200.withOpacity(0.2),
            // ),
            height: 300,
            width: 400,
            margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Hello, my name is',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Sylvester-Paul David',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Text(
                      "And I'm a ",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                    Text(
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
                      child: const Center(
                        child: Text(
                          'Hire me',
                          style: TextStyle(
                            color: Colors.white,
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
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade100.withOpacity(0.1),
              ),
              height: 490,
              child: const Center(
                child: Text('Picture'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
