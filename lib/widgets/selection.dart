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

  bool btnPressed1 = false;
  bool btnPressed2 = false;
  bool btnPressed3 = false;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width / 1.67,
      height: 270,
      color: Color(0xff141182).withOpacity(0.7),
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
                            btnPressed1 = !btnPressed1;
                            btnPressed3 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed1 ? Color(0xffd18d06) : Colors.transparent ,
                          elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
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
                                fontWeight: FontWeight.bold,
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
                            btnPressed2 = !btnPressed2;
                            btnPressed1 = false;
                            btnPressed3 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed2 ? Color(0xffd18d06) : Colors.transparent,
                          elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
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
                                fontWeight: FontWeight.bold,
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
                            btnPressed3 = !btnPressed3;
                            btnPressed1 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed3 ? Color(0xffd18d06) : Colors.transparent,
                          elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
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
                                fontWeight: FontWeight.bold,
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
                            btnPressed1 = !btnPressed1;
                            btnPressed3 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed1 ? Colors.transparent : Color(0xffd18d06),
                          elevation: 0,
                            padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Free Zone',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
                            btnPressed2 = !btnPressed2;
                            btnPressed1 = false;
                            btnPressed3 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed2 ? Color(0xffd18d06) : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Offshore',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
                            btnPressed3 = !btnPressed3;
                            btnPressed1 = false;
                            btnPressed2 = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: btnPressed3 ? Color(0xffd18d06) : Colors.transparent,
                          elevation: 0,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0), // <-- Radius
                          ),
                        ),
                        child: Column(
                          children: [
                            Icon(
                              Icons.warehouse_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              'Mainland',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                  color: Colors.white,
                  child: Center(
                    child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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
                    color: Colors.white,
                    child: Center(
                      child: DropdownButton(
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


// old code ...
//
// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
//
// import 'package:flutter/material.dart';
// import 'package:wallstreet/widgets/responsive.dart';
//
// class Selection extends StatefulWidget {
//   const Selection({Key? key}) : super(key: key);
//
//   @override
//   State<Selection> createState() => _SelectionState();
// }
//
// class _SelectionState extends State<Selection> {
//   String dropDownValue1 = 'Select Activity';
//   String dropDownValue2 = 'No. of Shareholders';
//   String dropDownValue3 = 'Visa Allocation';
//   String dropDownValue4 = 'All Emirates';
//
//   // List of items in our dropdown menu
//   var items = [
//     'Select Activity',
//     'No. of Shareholders',
//     'Visa Allocation',
//     'All Emirates',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Container(
//       width: screenSize.width / 1.67,
//       height: 270,
//       color: Color(0xff141182).withOpacity(0.7),
//       child: Column(
//         children: [
//           ResponsiveWidget.isSmallScreen(context) ?
//           Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 width: screenSize.width / 5.48,
//                 height: 67,
//                 color: Color(0xffd18d06),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//
//                     Text(
//                       'Free Zone',
//                       style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: screenSize.width / 5.48,
//                 height: 67,
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                     Text(
//                       'Offshore',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: screenSize.width / 5.48,
//                 height: 67,
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                       size: 20,
//                     ),
//                     Text(
//                       'Mainland',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ): Row(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 width: screenSize.width / 5.01,
//                 color: Color(0xffd18d06),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                     ),
//                     Text(
//                       'Free Zone',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: screenSize.width / 5.01,
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                     ),
//                     Text(
//                       'Offshore',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: screenSize.width / 5.01,
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.warehouse_outlined,
//                       color: Colors.white,
//                     ),
//                     Text(
//                       'Mainland',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Container(
//             height: 2,
//             width: screenSize.width / 1.67,
//             color: Colors.white,
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           if (ResponsiveWidget.isSmallScreen(context))
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   width: screenSize.width / 4,
//                   height: 25,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue1 = newValue!;
//                         });
//                       },
//                       value: dropDownValue1,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 7,
//                 ),
//                 Container(
//                   width: screenSize.width / 4,
//                   height: 25,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue2 = newValue!;
//                         });
//                       },
//                       value: dropDownValue2,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 7,
//                 ),
//                 Container(
//                   width: screenSize.width / 4,
//                   height: 25,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue3 = newValue!;
//                         });
//                       },
//                       value: dropDownValue3,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 7,
//                 ),
//                 Container(
//                   width: screenSize.width / 4,
//                   height: 25,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue4 = newValue!;
//                         });
//                       },
//                       value: dropDownValue4,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           else if (ResponsiveWidget.isMediumScreen(context))
//             Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: screenSize.width / 6,
//                       color: Colors.white,
//                       child: Center(
//                         child: DropdownButton(
//                           items: items.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(
//                                 items,
//                                 style: TextStyle(fontSize: 11),
//                               ),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropDownValue1 = newValue!;
//                             });
//                           },
//                           value: dropDownValue1,
//                           icon: Icon(
//                             Icons.keyboard_arrow_down,
//                           ),
//                           underline: SizedBox(),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: screenSize.width / 6,
//                       color: Colors.white,
//                       child: Center(
//                         child: DropdownButton(
//                           items: items.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(
//                                 items,
//                                 style: TextStyle(fontSize: 11),
//                               ),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropDownValue2 = newValue!;
//                             });
//                           },
//                           value: dropDownValue2,
//                           icon: Icon(
//                             Icons.keyboard_arrow_down,
//                           ),
//                           underline: SizedBox(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     Container(
//                       width: screenSize.width / 6,
//                       color: Colors.white,
//                       child: Center(
//                         child: DropdownButton(
//                           items: items.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(
//                                 items,
//                                 style: TextStyle(fontSize: 11),
//                               ),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropDownValue3 = newValue!;
//                             });
//                           },
//                           value: dropDownValue3,
//                           icon: Icon(
//                             Icons.keyboard_arrow_down,
//                           ),
//                           underline: SizedBox(),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       width: screenSize.width / 6,
//                       color: Colors.white,
//                       child: Center(
//                         child: DropdownButton(
//                           items: items.map((String items) {
//                             return DropdownMenuItem(
//                               value: items,
//                               child: Text(
//                                 items,
//                                 style: TextStyle(fontSize: 11),
//                               ),
//                             );
//                           }).toList(),
//                           onChanged: (String? newValue) {
//                             setState(() {
//                               dropDownValue4 = newValue!;
//                             });
//                           },
//                           value: dropDownValue4,
//                           icon: Icon(
//                             Icons.keyboard_arrow_down,
//                           ),
//                           underline: SizedBox(),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             )
//           else
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(
//                   height: 80,
//                 ),
//                 Container(
//                   width: screenSize.width / 9,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue1 = newValue!;
//                         });
//                       },
//                       value: dropDownValue1,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Container(
//                   width: screenSize.width / 9,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue2 = newValue!;
//                         });
//                       },
//                       value: dropDownValue2,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Container(
//                   width: screenSize.width / 9,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue3 = newValue!;
//                         });
//                       },
//                       value: dropDownValue3,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 Container(
//                   width: screenSize.width / 9,
//                   color: Colors.white,
//                   child: Center(
//                     child: DropdownButton(
//                       items: items.map((String items) {
//                         return DropdownMenuItem(
//                           value: items,
//                           child: Text(
//                             items,
//                             style: TextStyle(fontSize: 11),
//                           ),
//                         );
//                       }).toList(),
//                       onChanged: (String? newValue) {
//                         setState(() {
//                           dropDownValue4 = newValue!;
//                         });
//                       },
//                       value: dropDownValue4,
//                       icon: Icon(
//                         Icons.keyboard_arrow_down,
//                       ),
//                       underline: SizedBox(),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           SizedBox(
//             height: 20,
//           ),
//           if(ResponsiveWidget.isSmallScreen(context))
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 primary: Color(0xffd18d06),
//               ),
//               onPressed: () {},
//               child: Text(
//                 'Compare Prices',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           else if(ResponsiveWidget.isMediumScreen(context))
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//                 primary: Color(0xffd18d06),
//               ),
//               onPressed: () {},
//               child: Text(
//                 'Compare Prices',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             )
//           else ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
//                 primary: Color(0xffd18d06),
//               ),
//               onPressed: () {},
//               child: Text(
//                 'Compare Prices',
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
