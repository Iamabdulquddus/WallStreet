// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Our Services',
          style: TextStyle(color: Color(0xffd18d06), fontSize: 35),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Our service areas include mainland company formation, free zone and offshore company formation, '
          '\n business structuring and restructuring, local partner, PRO services, document clearing, document '
          '\n and data verification, translation, VAT registration, secretarial and related services.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                      child: Image.asset(
                    'assets/images/cooperation.png',
                    height: 50,
                    width: 50,
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'BUSINESS SETUP SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We assist in setting up all types of businesses including main land companies, free zone companies and off shore companies in Dubai, across the UAE and worldwide.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/team.png',
                        height: 50,
                        width: 50,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'LOCAL PARTNER SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Our strong network of UAE nationals ensures that we provide you with reliable local partner services protecting your rights in main land companies',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/prosevice.png',
                        height: 50,
                        width: 50,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'PRO SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Our PRO service ensures that your transactions at the government departments across the UAE are completed in the most cost-efficient and timely manner',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/cleaning.png',
                        height: 50,
                        width: 50,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'DOCUMENT CLEARING SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Our strong network of partners around the world ensures that we provide document legalization and attestation services throughout the world in a seamless manner.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/registration.png',
                        height: 50,
                        width: 50,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'VAT REGISTRATION SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We not only setup your business in the most efficient manner, but also provide you with comprehensive VAT registration service in the UAE.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              height: 190,
              width: 260,
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 30,
                      child: Image.asset(
                        'assets/images/documents.png',
                        height: 50,
                        width: 50,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'DOCUMENT TRANSLATION SERVICES',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffd18d06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We provide top quality document translation services in various languages and file all necessary documents with the government departments where required.',
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
