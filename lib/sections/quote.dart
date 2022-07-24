// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallstreet/widgets/responsive.dart';

class Quote extends StatefulWidget {
  const Quote({Key? key}) : super(key: key);

  @override
  State<Quote> createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return
      ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context) ?
      Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Our Happy Clients',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color(0xff141182),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'What People say about us',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  color: Colors.white,
                                  width: screenSize.width/2.5,
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerc',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/istockphoto-471247592-612x612.jpg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Amandar pryar',
                                            style: TextStyle(
                                                color: Color(0xff141182)),
                                          ),
                                          Text(
                                            'CEO',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(15),
                                  color: Colors.white,
                                  width: screenSize.width/2.5,
                                  child: Text(
                                    'lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerc',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 10),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundImage: AssetImage(
                                          'assets/images/istockphoto-471247592-612x612.jpg'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Amandar pryar',
                                            style: TextStyle(
                                                color: Color(0xff141182)),
                                          ),
                                          Text(
                                            'CEO',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: screenSize.width,
            color: Color(0xff141182),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let’s talk about improving your \nbusiness",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 45,
                    width: screenSize.width/1.7,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 45,
                    width: screenSize.width/1.7,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 45,
                    width: screenSize.width/1.7,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Subject",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.topic,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    width: screenSize.width/1.7,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Message",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(

                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text(
                      "-  Get a free quote",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
          :
      Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          color: Colors.grey.shade300,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 30, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: screenSize.width/4,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Our Happy Clients',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff141182),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'What People say about us',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                color: Colors.white,
                                height: 110,
                                width: 200,
                                child: Text(
                                  'orem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerc',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/istockphoto-471247592-612x612.jpg'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Amandar pryar',
                                          style: TextStyle(
                                              color: Color(0xff141182)),
                                        ),
                                        Text(
                                          'CEO',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(15),
                                color: Colors.white,
                                height: 110,
                                width: 200,
                                child: Text(
                                  'lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diamnonummy nibh euismod tinciduntut laoreet dolore magna aliquamerat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerc',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 10),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        'assets/images/istockphoto-471247592-612x612.jpg'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Amandar pryar',
                                          style: TextStyle(
                                              color: Color(0xff141182)),
                                        ),
                                        Text(
                                          'CEO',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 11,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 400,
            width: screenSize.width/4,
            color: Color(0xff141182),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 40, 10, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let’s talk about improving your \nbusiness",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.person_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Subject",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.topic,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 250,
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      decoration: InputDecoration(
                        hintText: "Message",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(

                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    child: Text(
                      "-  Get a free quote",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
