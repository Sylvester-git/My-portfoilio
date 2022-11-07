import 'package:flutter/material.dart';

class Contactscreen extends StatelessWidget {
  const Contactscreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
        margin: EdgeInsets.only(bottom: 10,),
      height: 600,
      color: Colors.amber,
      child: Row(
        children: [
          Container(
            color: Colors.yellow,
            height: 300,
            width: 400,
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Hello, my name is',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Sylvester-Paul David',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
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
                SizedBox(
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
                      child: Center(
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
          SizedBox(
            width: 150,
          ),
          Expanded(
            child: Container(
              color: Colors.yellow,
              height: 490,
              child: Center(
                child: Text('Picture'),
              ),
            ),
          )
        ],
      ),
    );
  }
}