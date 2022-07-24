import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen,
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1100;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1100;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return largeScreen;
        } else if (constraints.maxWidth <= 1100 &&
            constraints.maxWidth >= 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}




// var items1 = [
//   'Select Activity',
//   'Services',
//   'Holding',
//   'Specific Trading',
//   'General Trading',
//   'Commericals',
//   'E-Commerce',
//   'Media',
// ];
// var items2 = [
//   'No. of Shareholders',
//   '1 Shareholders',
//   '2 Shareholders',
//   '3 Shareholders',
//   '4 Shareholders',
//   '5 Shareholders',
//   '6 Shareholders',
//   '7 Shareholders',
//   '8 Shareholders',
// ];
// var items3 = [
//   'Visa Allocation',
//   '0 Visa',
//   '1 Visa',
//   '2 Visa',
//   '3 Visa',
//   '4 Visa',
//   '5 Visa',
//   '6 Visa',
//   '7 Visa',
//   '8 Visa',
//   '9 Visa',
//   '10 Visa',
// ];
// var items4 = [
//   'All Emirates',
//   'Dubai',
//   'Abu Dhabi',
//   'Fujairah',
//   'Sharjah',
//   'Ras Al Khaimah',
//   'Ajman',
//   'Umm Al Quwain',
// ];

