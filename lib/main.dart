import 'package:flutter/material.dart';
import 'package:travel_app/Pages/home_page.dart';
import 'package:travel_app/Pages/navpages/detailed_page.dart';
import 'package:travel_app/Pages/navpages/main_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: Home_Page(),
    // home: MainPage(),
    home: DetailedPage(),
  ));
}
