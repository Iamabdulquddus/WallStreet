// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
  // Initial Selected Value

  String dropDownValue1 = 'Select Activity';
  String dropDownValue2 = 'No. of Shareholders';
  String dropDownValue3 = 'Visa Allocation';
  String dropDownValue4 = 'All Emirates';

  // List of items in our dropdown menu
  var items = [
    'Select Activity',
    'No. of Shareholders',
    'Visa Allocation',
    'All Emirates',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      height: 280,
       color: Color(0xff141182).withOpacity(0.7),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 234,
                color: Color(0xffd18d06),
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
              Container(
                width: 233,
                padding: EdgeInsets.symmetric(vertical: 10),
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
              Container(
                width: 233,
                padding: EdgeInsets.symmetric(vertical: 10),
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
            ],
          ),
          Container(
            height: 2,
            width: 700,
            color: Colors.white,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 160,
                color: Colors.white,
                child: Center(
                  child: DropdownButton(
                    items: items.map((String items) {
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
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 160,
                color: Colors.white,
                child: Center(
                  child: DropdownButton(
                    items: items.map((String items) {
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
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 160,
                color: Colors.white,
                child: Center(
                  child: DropdownButton(
                    items: items.map((String items) {
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
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 160,
                color: Colors.white,
                child: Center(
                  child: DropdownButton(
                    items: items.map((String items) {
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
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                primary: Color(0xffd18d06),),
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
    );
  }
}
