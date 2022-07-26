// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallstreet/pages/signup_page.dart';
import 'package:wallstreet/sections/appbar_contents.dart';
import 'package:wallstreet/sections/footer.dart';
import 'package:wallstreet/sections/government_departments.dart';
import 'package:wallstreet/widgets/selection.dart';
import '../sections/aboutus.dart';
import '../sections/bank_accounts.dart';
import '../sections/our_services.dart';
import '../sections/quote.dart';
import '../sections/why_us.dart';
import '../widgets/header.dart';
import '../widgets/responsive.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: ResponsiveWidget.isMediumScreen(context) ||
              ResponsiveWidget.isSmallScreen(context)
          ? AppBar(
              iconTheme: IconThemeData(
                color: Color(0xffd18d06),
              ),
              elevation: 0,
              backgroundColor: Colors.white,
              title: Image.asset(
                "assets/images/Logo.png",
                width: screenSize.height / 5,
              ),
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
            // width: screenSize.width/5,
            height: 40,
            child: Row(
              children: [
                buildSearchField(context),
                SizedBox(width: 5,),
                TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUpPage(),),);
                }, child: Text('sign up',style: TextStyle(color: Color(0xffd18d06),),),),
                TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),),);
                }, child: Text('Log in',style: TextStyle(color: Color(0xffd18d06),),),),
              ],
            ),
          ),

        ],

            )
          : PreferredSize(
              preferredSize: Size(screenSize.width, 130),
              child: Header(),
            ),
      drawer: AppBarContents(),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Selection(),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              AboutUs(),
              SizedBox(
                height: 20,
              ),
              ResponsiveWidget.isLargeScreen(context)
                  ? Container(
                      height: 620,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff141182).withOpacity(0.9),
                        image: DecorationImage(
                          image: AssetImage('assets/images/background.jpg',),
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(.2), BlendMode.dstATop),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: OurServices(),
                    )
                  : Container(
                      height: 800,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff141182).withOpacity(0.9),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3), BlendMode.dstATop),
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


Widget buildSearchField(BuildContext context) {
  const color = Colors.grey;
  var screenSize = MediaQuery.of(context).size;
  return SizedBox(
    height: 40,
    width: screenSize.width/4,
    child: TextField(
        style: TextStyle(color: color),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          hintText: 'Search',
          hintStyle: TextStyle(color: color, fontSize: 13),
          prefixIcon: Icon(Icons.search, color: color),
          filled: true,
          fillColor: Colors.white12,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: color.withOpacity(0.7)),
          ),
        ),
    ),
  );
}