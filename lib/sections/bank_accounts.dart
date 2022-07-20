// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BankAccounts extends StatelessWidget {
  const BankAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/emirates-nbd.jpg', scale: 2.5, fit: BoxFit.contain,),
            Image.asset('assets/images/mashreq.jpg', scale: 2.5, fit: BoxFit.contain,),
            Image.asset('assets/images/rakbank.jpg', scale: 2.5, fit: BoxFit.contain,),
            Image.asset('assets/images/emirates-islamic.jpg', scale: 2.5, fit: BoxFit.contain,),
            Image.asset('assets/images/dib.jpg', scale: 2.5, fit: BoxFit.contain,),
            Image.asset('assets/images/adib.jpg', scale: 2.5, fit: BoxFit.contain,),
          ],
        ),
      ],
    );
  }
}
