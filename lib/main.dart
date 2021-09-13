import 'package:flutter/material.dart';
import 'package:samasys/view/screens/create_employee_profile.dart';
import 'package:samasys/view/screens/employees_page.dart';
import 'package:samasys/view/theme/app_theme.dart';

void main() async
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EmployeesPage(),
      theme: themeData,
      debugShowCheckedModeBanner: false,
    );
  }
}
