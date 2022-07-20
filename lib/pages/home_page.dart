// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallstreet/sections/footer.dart';
import 'package:wallstreet/sections/government_departments.dart';
import 'package:wallstreet/widgets/selection.dart';
import '../sections/aboutus.dart';
import '../sections/bank_accounts.dart';
import '../sections/our_services.dart';
import '../sections/quote.dart';
import '../sections/why_us.dart';
import '../widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/background1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 330, vertical: 80),
                        child: Selection(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              AboutUs(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 680.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff141182).withOpacity(0.9),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill,

                  ),
                ),
                child: OurServices(),
              ),
              GovernmentDepartments(),
              BankAccounts(),
              SizedBox(
                height: 40,
              ),
              Quote(),
              WhyUs(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
