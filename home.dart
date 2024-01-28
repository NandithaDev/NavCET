// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
//import 'login.dart';
import 'location.dart';
import 'bus_route_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 190, 7),
      appBar: buildAppBar(context),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 280,
              height: 350,
              margin: EdgeInsets.only(top: 70),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 235, 235),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.end, // Align text to bottom
                children: [
                  InkWell(
                    // ... tap handler
                    onTap: () {
                      // Handle tap on bus icon
                      print(
                          "Tap is detected!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                      Navigator.pushNamed(context, '/bus_route_screen');
                    },
                    child: Icon(
                      Icons.bus_alert_rounded,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 140.0,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.all(20.0), // Adjust padding as needed
                    child: Text(
                      "Bus Route", // Replace with your desired text
                      style: TextStyle(fontSize: 20.0), // Customize text style
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 280,
              height: 210,
              margin:
                  EdgeInsets.only(top: 20), // Adjust spacing between containers
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 231, 235, 235),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      // Handle tap on bus icon
                      print(
                          "Tap is detected!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                      Navigator.pushNamed(context, '/driver_profile');
                    },
                    child: Icon(
                      Icons.location_history,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 140.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      "Driver", // Replace with your desired text
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onTapLogin(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => GetUserLocation(
                title: 'Location',
              )),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Track Your Bus',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      elevation: 10.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => onTapLogin(context),
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text('<', style: TextStyle(fontSize: 30)),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Your onTap action here
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            child: Transform.translate(
              offset: Offset(0, -10),
              child: Text('..', style: TextStyle(fontSize: 30)),
            ),
          ),
        ),
      ],
    );
  }
}
