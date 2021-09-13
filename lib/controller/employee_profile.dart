import 'package:flutter/material.dart';
import 'package:samasys/model/employee.dart';

List<Employee> employees = [];

void insertEmployeeProfile(
    {TextEditingController? fullName,
    TextEditingController? phoneNumber,
    TextEditingController? email,
    TextEditingController? position,
    TextEditingController? salary}) {
  try {
    Employee employee = new Employee(
        fullName: fullName!.text,
        phoneNumber: phoneNumber!.text,
        email: email!.text,
        position: position!.text,
        salary: double.parse(salary!.text));

    employees.add(employee);
  } catch (e) {}
}

Future<List<Employee>> fetchAllEmployees() async {
  try {
    return employees;
  } catch (e) {
    return [];
  }
}


