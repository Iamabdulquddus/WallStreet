// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallstreet/widgets/responsive.dart';

class Selection extends StatefulWidget {
  const Selection({Key? key}) : super(key: key);

  @override
  State<Selection> createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
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
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: screenSize.width / 5.48,
                      height: 67,
                      color: Color(0xffd18d06),
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
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.48,
                      height: 67,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenSize.width / 5.48,
                      height: 67,
                      padding: EdgeInsets.symmetric(vertical: 10),
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
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
                      padding: EdgeInsets.symmetric(vertical: 10),
                      width: screenSize.width / 5.01,
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
                      width: screenSize.width / 5.01,
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
                      width: screenSize.width / 5.01,
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
            width: 2,
            height: 270,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
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
          SizedBox(
            height: 20,
          ),
        ],
      ),
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
