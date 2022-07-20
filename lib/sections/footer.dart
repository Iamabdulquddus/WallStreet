// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
          height: 500,
          width: double.infinity,
          color: Color(0xff141182),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(330, 60, 4, 40),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(right: 70),
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Image.asset(
                          "assets/images/logo.png",
                          scale: 3.7,
                        ),
                      ),
                      Text(
                        'Churchill Executive Towers, Office No. 1007 Business Bay, Dubai – UAE',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '+971 54 592 0756',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '1151 Walker Rd Ste 100 Dover, DE 1990 ,USA.',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '+1 559 426 3747',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10, top: 60, left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'POPULAR PRODUCTS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• RAK Offshore',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• Jebel Ali Offshore',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• Ajman Offshore',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• Shams Free Zone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• IFZA Free Zone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• RAKEZ Free Zone',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 20,
                        width: 200,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
                            //                   <--- right side
                            color: Colors.white,
                            width: 1.0,
                          ),
                        )),
                        child: Text(
                          '• JAFZA Offshore',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 50, top: 60, left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'To Get Latest Updates',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 200,
                            height: 40,
                            child: TextField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                  hintText: "Your email address",
                                  hintStyle: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 12),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(0)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              primary: Color(0xffd18d06),
                              backgroundColor: Color(0xffd18d06),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(0),
                                ),
                              ),
                              fixedSize: Size.fromHeight(40),
                            ),
                            child: Text(
                              "- Submit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Text(
                        'FOLLOW ON SOCIALS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                              margin:  EdgeInsets.all(15.0),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                          ), child: Icon(Icons.facebook, size: 40, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.all(15.0),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 40, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.all(15.0),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 40, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.all(15.0),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.whatsapp_outlined, size: 40, color: Colors.white,)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Container(
            width: MediaQuery.of(context).size.width * 1.0,
            color: Color(0xff141182),
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 500,
                  child: Text(
                    '© 2021 Wall Street Investment & Commercial Brokerage, Dubai, United Arab Emirates. All rights reserved.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
