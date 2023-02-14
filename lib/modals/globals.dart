import 'package:flutter/cupertino.dart';

List<Map<String, dynamic>> videos = [
  {
    'id': 1,
    'img': AssetImage('assets/images/animals.jpg'),
    'name': "Animal",
    'video': 'assets/videos/fish.mp4',
  },
  {
    'id': 2,
    'img': AssetImage('assets/images/car.jpg'),
    'name': "Car",
    'video': 'assets/videos/car2.mp4',
  },
  {
    'id': 3,
    'img': AssetImage('assets/images/nature.jpg'),
    'name': "Nature",
    'video': 'assets/videos/nature.mp4',
  },
  {
    'id': 4,
    'img': AssetImage('assets/images/travel.jpg'),
    'name': "Travel",
    'video': 'assets/videos/travel.mp4',
  },
];
String? videoLink;
String? Name;

class Globals {
  static int? image;
}
