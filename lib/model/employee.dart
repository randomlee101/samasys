import 'package:flutter/material.dart';

class Employee {
  final String? fullName;
  final String? phoneNumber;
  final String? email;
  final String? position;
  final double? salary;

  Employee(
      {@required this.fullName,
      @required this.phoneNumber,
      @required this.email,
      @required this.position,
      @required this.salary});
}
