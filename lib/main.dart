// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallstreet/pages/home_page.dart';

void main() {
  runApp(const WallStreet());
}

class WallStreet extends StatelessWidget {
  const WallStreet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
