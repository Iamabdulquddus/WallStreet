// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wallstreet/widgets/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: Color(0xff141182),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 4, 40),
            child:
            ResponsiveWidget.isSmallScreen(context) || ResponsiveWidget.isMediumScreen(context) ?
            Column(
              children: [
                Container(
                  width: screenSize.width,
                  padding: EdgeInsets.only(right: screenSize.width/24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                       width: screenSize.width/4,
                      ),
                      SizedBox(width: 40,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: screenSize.width/2,
                            child: Text(
                            'Churchill Executive Towers, Office No. 1007 Business Bay, Dubai – UAE',
                            style: TextStyle(color: Colors.white),
                        ),
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
                          ),],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only( top: 20, ),
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
                        height: 30,
                      ),
                      Container(
                        height: 20,
                        width: screenSize.width/1.1,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
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
                        width: screenSize.width/1.1,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
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
                        width: screenSize.width/1.1,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
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
                        width: screenSize.width/1.1,
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
                        width: screenSize.width/1.1,
                        decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
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
                        width: screenSize.width/1.1,
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
                        width:screenSize.width/1.1,
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
                  padding: EdgeInsets.only(right: screenSize.width/25, top: 20, left: screenSize.width/25),
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
                        height: 15,
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
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.white),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(width: 5,),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              primary: Color(0xffd18d06),
                              backgroundColor: Color(0xffd18d06),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(3),
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
                        height: 40,
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
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.whatsapp_outlined, size: 35, color: Colors.white,)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ) :
            Row(
              children: [
                Container(
                  width: screenSize.width/4.5,
                ),
                Container(
                  padding: EdgeInsets.only(right: screenSize.width/24),
                  width: screenSize.width/4.5,
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
                      SizedBox(height: 10,),
                      Text(
                        '+971 54 592 0756',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '1151 Walker Rd Ste 100 Dover, DE 1990 ,USA.',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10,),
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
                        width: screenSize.width/6,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
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
                        width: screenSize.width/6,
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(
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
                        width: screenSize.width/6,
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
                        width: screenSize.width/6,
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
                        width: screenSize.width/6,
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
                        width: screenSize.width/6,
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
                        width:screenSize.width/6,
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
                  padding: EdgeInsets.only(right: screenSize.width/25, top: 60, left: screenSize.width/25),
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
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                          ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.facebook, size: 35, color: Colors.white,)),
                          Container(
                              margin:  EdgeInsets.only(left: 10),
                              padding:  EdgeInsets.all(3.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(5),
                              ), child: Icon(Icons.whatsapp_outlined, size: 35, color: Colors.white,)),
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
