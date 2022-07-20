// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WhyUs extends StatelessWidget {
  const WhyUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 450,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WE ACCEPT",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "We accept the following credit cards. Our website is secured with SSL 256 Bit Encryption.",
                    style: TextStyle(color: Colors.grey),
                  ),

                  Image.asset('assets/images/payment-cards.png',scale: 1.5,),

                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 200,
            width: 450,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WHY CHOOSE INZONE",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 12,),
                          Text(
                            "We provide 30 day money back satisfaction guarantee to all our clients.",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 12,),
                          Text(
                            "We provide 100% confidentiality to all our clients",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 12,),
                          Text(
                            "We provide a dedicated account manager.",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.check, color: Colors.green, size: 12,),
                          Text(
                            "We provide bank account opening assistance through our \nwell-established banking relationships.",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
