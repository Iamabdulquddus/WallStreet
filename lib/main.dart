// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallstreet/pages/home_page.dart';
import 'package:wallstreet/pages/login_page.dart';
import 'package:wallstreet/pages/signup_page.dart';
import 'package:wallstreet/utils/routes.dart';

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
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.signupRoute: (context) => const SignUpPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
