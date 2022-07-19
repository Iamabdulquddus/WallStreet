// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '    One-stop solution to business \n setup in Dubai and across the UAE',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff141182),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'We provide world-class business setup services to our clients in Dubai and around the world.',
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/question.png',
                                width: 60,
                                height: 60,
                              ),
                              Text(
                                "01",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "What we do?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We are a leading Dubai based business setup service provider dedicated to offering world-class company formation services in Dubai and across the UAE in the most-efficient and cost-effective manner. Our in-depth service offerings and specialties include mainland, free zone and offshore company formation in Dubai and theUAE, PRO services, document clearing,translation, VAT registration and secretarial services.',
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/solution.png',
                                width: 60,
                                height: 60,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "02",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "What we do?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We are a leading Dubai based business setup service provider dedicated to offering world-class company formation services in Dubai and across the UAE in the most-efficient and cost-effective manner. Our in-depth service offerings and specialties include mainland, free zone and offshore company formation in Dubai and theUAE, PRO services, document clearing,translation, VAT registration and secretarial services.',
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 350,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 2),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/images/shake-hands.png',
                                width: 60,
                                height: 60,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "03",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "What we do?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'We are a leading Dubai based business setup service provider dedicated to offering world-class company formation services in Dubai and across the UAE in the most-efficient and cost-effective manner. Our in-depth service offerings and specialties include mainland, free zone and offshore company formation in Dubai and theUAE, PRO services, document clearing,translation, VAT registration and secretarial services.',
                            style: TextStyle(color: Colors.black54),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
