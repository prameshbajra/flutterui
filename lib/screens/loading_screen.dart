import 'package:clima/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  getPositionData() async {
    Location location = Location();
    await location.getLocation();
    print('Position : ${location.latitude} ${location.longitude}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: getPositionData,
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
