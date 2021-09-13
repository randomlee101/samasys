import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samasys/model/employee.dart';
import 'package:samasys/view/custom_widgets/custom_app_bar.dart';
import 'package:samasys/view/custom_widgets/employee_card.dart';
import 'package:samasys/view/custom_widgets/employee_expense.dart';
import 'package:samasys/view/theme/app_text_theme.dart';

String imgUrl =
    "https://cdn.dribbble.com/users/2140475/screenshots/13644357/media/567a50c3f73ea80242c897a9fb4dc218.jpg";

class EmployeeProfilePage extends StatelessWidget {
  const EmployeeProfilePage({Key? key, this.employee}) : super(key: key);

  final Employee? employee;

  @override
  Widget build(BuildContext context) {
    var _scaffKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffKey,
      drawer: drawer(context),
      body: SafeArea(
        child: Column(
          children: [
            customAppBar(key: _scaffKey),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8),
                shrinkWrap: true,
                children: [
                  employeeCard(
                      imgUrl: imgUrl,
                      fullName: employee?.fullName,
                      position: employee?.position,
                      email: employee?.email,
                      phoneNumber: employee?.phoneNumber),
                  Text(
                    "LOAN RECORD",
                    style: sectionHeader,
                  ),
                  employeeExpense(
                      month: "JAN",
                      amountBorrowed: "50000",
                      amountReceivable: "100000"),
                  employeeExpense(
                      month: "FEB",
                      amountBorrowed: "50000",
                      amountReceivable: "100000"),
                  employeeExpense(
                      month: "FEB",
                      amountBorrowed: "50000",
                      amountReceivable: "100000"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
