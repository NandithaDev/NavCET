import 'package:flutter/material.dart';
import 'package:geocode/geocode.dart';
import 'package:location/location.dart';
import 'dart:async'; // Import for Timer

import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GetUserLocation extends StatefulWidget {
  GetUserLocation({Key? key, required this.title}) : super(key: key);
  final String title;
  DatabaseReference locationRef = FirebaseDatabase.instance
      .ref('https://navcet-default-rtdb.firebaseio.com/'); //new fire
  @override
  _GetUserLocationState createState() => _GetUserLocationState();
}

class _GetUserLocationState extends State<GetUserLocation> {
  LocationData? currentLocation;
  String address = "";
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 3), (timer) => _getLocation());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (currentLocation != null)
                Text(
                    "Location: ${currentLocation?.latitude}, ${currentLocation?.longitude}"),
              if (currentLocation != null) Text("Address: $address"),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getLocation() async {
    Location location = new Location();
    LocationData? _locationData;
    //new fire
    widget.locationRef.push().set({
      'latitude': _locationData?.latitude,
      'longitude': _locationData?.longitude,
      'address': address
    });
    print("\n\nLocation data stored in Firebase!\n\n\n");

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    _getAddress(_locationData?.latitude, _locationData?.longitude)
        .then((value) => setState(() {
              currentLocation = _locationData;
              address = value;
              print("Successful=================================");
            }));
  }

  Future<String> _getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";
    GeoCode geoCode = GeoCode();
    Address address =
        await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
    return "${address.streetAddress}, ${address.city}, ${address.countryName}, ${address.postal}";
  }
}
