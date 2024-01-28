// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class BusRouteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 190, 7),
      appBar: AppBar(
        title: Text("Live Bus Locations"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: ListView(
          children: [
            // 1st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Thampanoor")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 2st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Vattiyoorkavu")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 3st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Mannarakonam")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 4st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Peroorkada")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 5st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Pattom")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 6st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Medical College")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 7st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Sreekaryam")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 8st column
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Center(child: Text("Chavadimukku")),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 231, 235, 235),
                ),
                height: 80,
                width: 950,
              ),
            ),
            // 8st column
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  child: Center(child: Text("Ambadi Nagar")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 231, 235, 235),
                  ),
                  height: 80,
                  width: 950,
                )),
            // 9st column
            Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  child: Center(child: Text("CET")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 231, 235, 235),
                  ),
                  height: 80,
                  width: 950,
                ))
          ], //children
        ),
      ),
    );
  }
}
