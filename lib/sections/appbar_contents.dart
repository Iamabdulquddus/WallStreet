// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppBarContents extends StatefulWidget {
  const AppBarContents({Key? key}) : super(key: key);

  @override
  State<AppBarContents> createState() => _AppBarContentsState();
}

class _AppBarContentsState extends State<AppBarContents> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color(0xffd18d06),
        child: ListView(
          children: <Widget>[
            // buildHeader(
            //   urlImage: urlImage,
            //   name: name,
            //   email: email,
            //   onClicked: () => Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => UserPage(
            //       name: 'Sarah Abs',
            //       urlImage: urlImage,
            //     ),
            //   )),
            // ),
            Container(
              padding: EdgeInsets.all(2),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'FREE ZONE',
                    icon: Icons.people,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'OFFSHORE',
                    icon: Icons.favorite_border,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'MAINLAND',
                    icon: Icons.workspaces_outline,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'PRO SERVICES',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'BANKS',
                    icon: Icons.food_bank,
                    onClicked: () => selectedItem(context, 4),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'OTHER SERVICES',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'CONTACT',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.white;
  const hoverColor = Color(0xffe5a647);

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  Navigator.of(context).pop();

  switch (index) {
    case 0:
      // Navigator.of(context).push(MaterialPageRoute(
      //   builder: (context) => PeoplePage(),
      // ));
      break;
    case 1:
      // Navigator.of(context).push(MaterialPageRoute(
      //   builder: (context) => FavouritesPage(),
      // ));
      break;
  }
}

