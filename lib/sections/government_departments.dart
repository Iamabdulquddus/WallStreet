// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class GovernmentDepartments extends StatelessWidget {
  const GovernmentDepartments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Government Departments',
          style: TextStyle(color: Color(0xff141182), fontSize: 35),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'We provide world-class business setup services to our clients in Dubai and around the world.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Image.asset('assets/images/govt-desktop-com.webp'),
      ],
    );
  }
}
