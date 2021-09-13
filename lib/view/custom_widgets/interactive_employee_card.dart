import 'dart:async';

import 'package:flutter/material.dart';
import 'package:samasys/controller/employee_profile.dart';
import 'package:samasys/model/employee.dart';
import 'package:samasys/view/custom_widgets/employee_card.dart';
import 'package:samasys/view/custom_widgets/employee_card_action.dart';

class InteractiveEmployeeCard extends StatefulWidget {
  const InteractiveEmployeeCard({Key? key, this.employee, this.function}) : super(key: key);

  final Employee? employee;
  final VoidCallback? function;

  @override
  _InteractiveEmployeeCardState createState() =>
      _InteractiveEmployeeCardState();
}

class _InteractiveEmployeeCardState extends State<InteractiveEmployeeCard> {
  bool visible = false;

  void changeVisibility() {
    setState(() {
      visible = !visible;
    });

    Future.delayed(
        Duration(seconds: 3), () => setState(() => visible = !visible));
  }

  String imgUrl =
      "https://cdn.dribbble.com/users/2140475/screenshots/13644357/media/567a50c3f73ea80242c897a9fb4dc218.jpg";

  @override
  Widget build(BuildContext context) {
    var e = widget.employee!;

    return GestureDetector(
      onTap: changeVisibility,
      child: Stack(
        children: [
          employeeCard(
              imgUrl: imgUrl,
              fullName: e.fullName,
              position: e.position,
              email: e.email,
              phoneNumber: e.phoneNumber),
          employeeCardAction(
              visible: visible,
              employee: e,
              function: widget.function,
              context: context)
        ],
      ),
    );
  }
}
