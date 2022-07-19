// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            width: 130,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/Logo.png',  height: 50,),
              SizedBox(
              height: 4,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                color: Color(0xff141182),
                height: 46,
                child: Center(
                  child: Text(
                    "- Get a free quote",
                    style:
                    TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
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
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "support@wallstreetinvest.ae",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
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
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "24x7 online support",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "+971 54 592 0756",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 50,
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
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Google Map",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  "4.9/5",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [

                  SizedBox(width: 30,),
                  Container(
                    color: Colors.grey.shade100,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HeaderNav(text: "FREE ZONE", selected: true),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "OFFSHORE", selected: false),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "MAINLAND", selected: false),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "PRO SERVICES", selected: false),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "BANKS", selected: false),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "OTHER SERVICES", selected: false),
                          SizedBox(
                            width: 30,
                          ),
                          HeaderNav(text: "Contact", selected: false),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color(0xff141182),),
                    width: 46,
                    height: 46,
                    child: Icon(Icons.search, color: Colors.white,),
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
            fontSize: 13,
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
