// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:wallstreet/widgets/responsive.dart';

class BankAccounts extends StatelessWidget {
  const BankAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return
      ResponsiveWidget.isSmallScreen(context)?
      Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Bank Accounts',
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
            height: 20,
          ),
          Column(
            children: [
              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 20,),
                    Container(
                      height: 120,
                      padding: EdgeInsets.all(20),
                      child: ClipPath(
                        clipper: OctagonalClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xfffde7c6), Color(0xffd18d06)]),
                            border: Border.all(color: Colors.blueAccent, width: 2),
                          ),
                          child: Image.asset(
                            'assets/images/emirates-nbd.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/mashreq.jpg',
                      scale: 2.5,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/rakbank.jpg',
                      scale: 2.5,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/emirates-islamic.jpg',
                      scale: 2.5,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/dib.jpg',
                      scale: 2.5,
                      fit: BoxFit.contain,
                    ),
                    Image.asset(
                      'assets/images/adib.jpg',
                      scale: 2.5,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
          :
      Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'Bank Accounts',
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
          height: 20,
        ),
        Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 20,),
                  Container(
                    height: 180,
                    padding: EdgeInsets.all(20),
                    child: ClipPath(
                      clipper: OctagonalClipper(),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xfffde7c6), Color(0xffd18d06)]),
                            border: Border.all(color: Colors.blueAccent, width: 3),
                        ),
                        child: Image.asset(
                          'assets/images/emirates-nbd.jpg',
                          height: screenSize.width/10,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/mashreq.jpg',
                    scale: 2.5,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/rakbank.jpg',
                    scale: 2.5,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/emirates-islamic.jpg',
                    scale: 2.5,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/dib.jpg',
                    scale: 2.5,
                    fit: BoxFit.contain,
                  ),
                  Image.asset(
                    'assets/images/adib.jpg',
                    scale: 2.5,
                    fit: BoxFit.contain,
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
