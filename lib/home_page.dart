import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meditation_app/scrollList.dart';

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
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column bodyPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Good morning Text Container
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "GOOD MORNING",
                style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff3F414E),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Have a peacefull and wonderfull day",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Montserrat'),
              ),
            ],
          ),
        ),
        // Sized Box for spacing
        SizedBox(
          height: 10,
        ),
        // Top Card stack section with the player
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
                      child: cardHome1(),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Card(
                      // color: Color(0xffFFDB9D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: cardHome2(),
                    ),
                  )
                ],
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Player_home.png'))),
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
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  Text(
                                    'Meditation',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
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
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),

        Expanded(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recomendations",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 163,
                child: ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffFBD89F)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              width: 150,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image:
                                        NetworkImage(scrollItems[index].image)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              textDirection: TextDirection.ltr,
                              children: [
                                Text(
                                  scrollItems[index].name,
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (_, index) => SizedBox(width: 20),
                  scrollDirection: Axis.horizontal,
                  itemCount: scrollItems.length,
                ),
              )
            ],
          ),
        ))
      ],
    );
  }

  // Function for Each cards
  Container cardHome1() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Card1_home.jpg'),
          fit: BoxFit.fill,
          // alignment: Alignment.topCenter,
        ),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text(
                "Basics",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(width: 5),
            ],
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 7.0),
                child: Text(
                  "3-10 min",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Color(0xffEBEAEC),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "Start",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      height: 210,
    );
  }
}

Container cardHome2() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/Card2_home.jpg'),
        fit: BoxFit.fill,
        // alignment: Alignment.topCenter,
      ),
    ),
    padding: EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              "Relaxation",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(width: 5),
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 7.0),
              child: Text(
                "3-10 min",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Color(0xff3F414E),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  "Start",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ],
    ),
    height: 210,
  );
}
