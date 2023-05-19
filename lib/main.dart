import 'package:flutter/material.dart';
import 'package:weather/currentWeather.dart';
import 'package:weather/models/location.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Location> locations = [
    new Location(
        city: "calgary",
        country: "canada",
        lat: "51.0407154",
        lon: "-114.1513999"),
    new Location(
        city: "edmonton",
        country: "canada",
        lat: "53.5365386",
        lon: "-114.1513999"),
    new Location(
        city: "Yogyakarta",
        country: "indonesia",
        lat: "-7.797068",
        lon: "110.370529")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CurrentWeatherPage(locations, context),
    );
  }
}
