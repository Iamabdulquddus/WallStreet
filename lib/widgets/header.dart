// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/signup_page.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      // height: 200,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Logo.png',
                      width: screenSize.height / 4.5,
                    ),
                    SizedBox(
                      width: screenSize.width / 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  size: 30,
                                  color: Color(0xffd18d06),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Email",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "support@wallstreetinvest.ae",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenSize.width / 40,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 30,
                                  color: Color(0xffd18d06),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "24x7 online support",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "+971 54 592 0756",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: screenSize.width / 40,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd18d06),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd18d06),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd18d06),
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd18d06),
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xffd18d06),
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Google Map",
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "4.9/5",
                                      style: TextStyle(
                                          fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenSize.width / 30,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignUpPage(),
                          ),
                        );
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                          color: Color(0xffd18d06),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xffd18d06),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff141182),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 21),
                        ),
                        child: Text(
                          "- Get a free quote",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          Container(
                            color: Colors.grey.shade100,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  HeaderNav(text: "FREE ZONE", selected: true),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(text: "OFFSHORE", selected: false),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(text: "MAINLAND", selected: false),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(
                                      text: "PRO SERVICES", selected: false),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(text: "BANKS", selected: false),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(
                                      text: "OTHER SERVICES", selected: false),
                                  SizedBox(
                                    width: screenSize.width / 50,
                                  ),
                                  HeaderNav(text: "Contact", selected: false),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(1, 1, 2, 0),
                        width: screenSize.width / 7.5,
                        height: 42,
                        child: buildSearchField(),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HeaderNav extends StatefulWidget {
  const HeaderNav({Key? key, required this.text, required this.selected})
      : super(key: key);

  final String text;
  final bool selected;

  @override
  State<HeaderNav> createState() => _HeaderNavState();
}

class _HeaderNavState extends State<HeaderNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 11,
          ),
        ),
        widget.selected
            ? SizedBox(
                height: 5,
              )
            : SizedBox(),
        widget.selected
            ? CircleAvatar(
                backgroundColor: Colors.deepOrangeAccent,
                radius: 2,
              )
            : SizedBox(),
      ],
    );
  }
}

Widget buildSearchField() {
  const color = Colors.grey;

  return TextField(
    style: TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      hintText: 'Search',
      hintStyle: TextStyle(color: color),
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
  );
}
