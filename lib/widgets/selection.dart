// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallstreet/widgets/responsive.dart';

String dropDownValue1 = 'Select Activity';
String dropDownValue2 = 'No. of Shareholders';
String dropDownValue3 = 'Visa Allocation';
String dropDownValue4 = 'All Emirates';
String dropDownValue5 = 'Bank Account (y/n)';

// List of items in our dropdown menu
var items1 = [
  'Select Activity',
  'Services',
  'Holding',
  'Specific Trading',
  'General Trading',
  'Commericals',
  'E-Commerce',
  'Media',
];
var items2 = [
  'No. of Shareholders',
  '1 Shareholders',
  '2 Shareholders',
  '3 Shareholders',
  '4 Shareholders',
  '5 Shareholders',
  '6 Shareholders',
  '7 Shareholders',
  '8 Shareholders',
];
var items3 = [
  'Visa Allocation',
  '0 Visa',
  '1 Visa',
  '2 Visa',
  '3 Visa',
  '4 Visa',
  '5 Visa',
  '6 Visa',
  '7 Visa',
  '8 Visa',
  '9 Visa',
  '10 Visa',
];
var items4 = [
  'All Emirates',
  'Dubai',
  'Abu Dhabi',
  'Fujairah',
  'Sharjah',
  'Ras Al Khaimah',
  'Ajman',
  'Umm Al Quwain',
];
var items5 = [
  'Bank Account (y/n)',
  'Yes',
  'No',
];

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  var dropDownSection = [
    SectionOne(),
    SectionTwo(),
    SectionThree(),
  ];

  int currentValue = 0;

  bool btnPressed1 = true;
  bool btnPressed2 = false;
  bool btnPressed3 = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width / 1.67,
      height: 270,
      decoration: BoxDecoration(
        color: Color(0xffd18d06).withOpacity(0.5),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      width: screenSize.width / 5.48,
                      height: 67,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 0;
                            btnPressed1 = true;
                            btnPressed3 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed1
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                            ), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'Free Zone',
                              style: TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.48,
                      height: 67,
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 1;
                            btnPressed2 = true;
                            btnPressed1 = false;
                            btnPressed3 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed2
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'Offshore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.48,
                      height: 67,
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 2;
                            btnPressed3 = true;
                            btnPressed1 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed3
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                            ), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 18,
                            ),
                            Text(
                              'Mainland',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 0),
                      width: screenSize.width / 5.01,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 0;
                            btnPressed1 = true;
                            btnPressed3 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed1
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                            ), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Free Zone',
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.01,
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 1;
                            btnPressed2 = true;
                            btnPressed1 = false;
                            btnPressed3 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed2
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(0), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Offshore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.01,
                      padding: EdgeInsets.symmetric(vertical: 0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentValue = 2;
                            btnPressed3 = true;
                            btnPressed1 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed3
                              ? Color(0xff141182)
                              : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                            ), // <-- Radius
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              'Mainland',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
          Container(
            width: 2,
            height: 270,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          dropDownSection[currentValue],
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class SectionOne extends StatefulWidget {
  const SectionOne({Key? key}) : super(key: key);

  @override
  State<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends State<SectionOne> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue1 = newValue!;
                        });
                      },
                      value: dropDownValue1,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue2 = newValue!;
                        });
                      },
                      value: dropDownValue2,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items3.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue3 = newValue!;
                        });
                      },
                      value: dropDownValue3,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items4.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue4 = newValue!;
                        });
                      },
                      value: dropDownValue4,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    primary: Color(0xffd18d06),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Compare Prices',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        else if (ResponsiveWidget.isMediumScreen(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items3.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue3 = newValue!;
                          });
                        },
                        value: dropDownValue3,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items4.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue4 = newValue!;
                          });
                        },
                        value: dropDownValue4,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        else
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded:true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items3.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue3 = newValue!;
                          });
                        },
                        value: dropDownValue3,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded:true,
                        items: items4.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue4 = newValue!;
                          });
                        },
                        value: dropDownValue4,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class SectionTwo extends StatefulWidget {
  const SectionTwo({Key? key}) : super(key: key);

  @override
  State<SectionTwo> createState() => _SectionTwoState();
}

class _SectionTwoState extends State<SectionTwo> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue1 = newValue!;
                        });
                      },
                      value: dropDownValue1,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue2 = newValue!;
                        });
                      },
                      value: dropDownValue2,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items3.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue3 = newValue!;
                        });
                      },
                      value: dropDownValue3,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items5.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue5 = newValue!;
                        });
                      },
                      value: dropDownValue5,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    primary: Color(0xffd18d06),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Compare Prices',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        else if (ResponsiveWidget.isMediumScreen(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items3.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue3 = newValue!;
                          });
                        },
                        value: dropDownValue3,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items5.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue5 = newValue!;
                          });
                        },
                        value: dropDownValue5,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        else
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items3.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue3 = newValue!;
                          });
                        },
                        value: dropDownValue3,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items5.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue5 = newValue!;
                          });
                        },
                        value: dropDownValue5,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class SectionThree extends StatefulWidget {
  const SectionThree({Key? key}) : super(key: key);

  @override
  State<SectionThree> createState() => _SectionThreeState();
}

class _SectionThreeState extends State<SectionThree> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        if (ResponsiveWidget.isSmallScreen(context))
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items1.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue1 = newValue!;
                        });
                      },
                      value: dropDownValue1,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items2.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue2 = newValue!;
                        });
                      },
                      value: dropDownValue2,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: screenSize.width / 3.2,
                  height: 25,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white, //background color of dropdown button
                      border: Border.all(
                          color: Colors.orangeAccent.shade100,
                          width: 1), //border of dropdown button
                      borderRadius: BorderRadius.circular(
                          5), //border raiuds of dropdown button
                      boxShadow: <BoxShadow>[
                        //apply shadow on Dropdown button
                        BoxShadow(
                            color: Color.fromRGBO(
                                0, 0, 0, 0.27), //shadow for button
                            blurRadius: 1) //blur radius of shadow
                      ]),
                  child: Center(
                    child: DropdownButton(
                      isExpanded: true,
                      items: items4.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(
                            items,
                            style: TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropDownValue4 = newValue!;
                        });
                      },
                      value: dropDownValue4,
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      underline: SizedBox(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    primary: Color(0xffd18d06),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Compare Prices',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        else if (ResponsiveWidget.isMediumScreen(context))
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items4.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue4 = newValue!;
                          });
                        },
                        value: dropDownValue4,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          )
        else
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items1.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue1 = newValue!;
                          });
                        },
                        value: dropDownValue1,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items2.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue2 = newValue!;
                          });
                        },
                        value: dropDownValue2,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: screenSize.width / 6,
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.orangeAccent.shade100, width: 1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.27),
                              blurRadius: 1)
                        ]),
                    child: Center(
                      child: DropdownButton(
                        isExpanded: true,
                        items: items4.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropDownValue4 = newValue!;
                          });
                        },
                        value: dropDownValue4,
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                        underline: SizedBox(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  primary: Color(0xffd18d06),
                ),
                onPressed: () {},
                child: Text(
                  'Compare Prices',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
