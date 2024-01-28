import 'package:flutter/material.dart';
import 'package:trial_app/pages/driver_profile.dart';

import 'pages/home.dart';
import 'pages/location.dart';
import 'pages/bus_route_screen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/driver_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  //await Firebase.initializeApp(
  //options: DefaultFirebaseOptions.currentPlatform,
  //);

  // Add any other relevant data as needed
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: HomePage(),
      routes: {
        '/bus_route_screen': (context) => BusRouteScreen(),
        '/driver_profile': (context) => DriverProfile(),
      },
    );
  }
}
//newly pasted
