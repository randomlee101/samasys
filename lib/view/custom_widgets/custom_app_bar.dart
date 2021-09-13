import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samasys/view/screens/create_employee_profile.dart';

Widget customAppBar({GlobalKey<ScaffoldState>? key}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.symmetric(horizontal: BorderSide(width: 2))
    ),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          key!.currentState!.openDrawer();
        },
        child: Icon(
          Icons.menu,
          size: 48,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "SAMASYS",
            style: TextStyle(letterSpacing: 10, height: 1.0, fontSize: 36),
          ),
          Text(
            "combat salary fraud",
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    ],
  ));
}

Drawer drawer(BuildContext context) => new Drawer(
      child: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new CreateEmployeeProfile()));
            },
            title: Text("Create Employee Profile"),
          ),
          ListTile(
            title: Text("Employees"),
          ),
        ],
      ),
    );
