import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        textDirection: TextDirection.ltr,
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Center(
                  child: Text(
                    "Peace 😇 Yoga",
                    style: TextStyle(fontFamily: null, fontSize: null),
                  ),
                ),
              ),
              elevation: 0.0,
              shadowColor: null,
            ),
            body: Container(
              child: bodyPanel(),
              padding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }

  Column bodyPanel() {
    return Column(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "GOOD MORNING",
                style: TextStyle(fontSize: 30, fontFamily: 'Mitr'),
              ),
              Text(
                "Have a peacefull and wonderfull day",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.lightBlueAccent[200],
                    fontFamily: 'Mitr'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: 210,
                        // color: Colors.amberAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: 210,
                        // color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    padding: EdgeInsets.all(4),
                    height: 95,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Flow with wind ",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    'Meditation',
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 30),
                          child: Icon(
                            Icons.play_circle_fill,
                            size: 45,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
