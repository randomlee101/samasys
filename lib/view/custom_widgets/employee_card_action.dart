import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:samasys/model/employee.dart';
import 'package:samasys/view/screens/employee_profile_page.dart';

Widget employeeCardAction({bool? visible, VoidCallback? function, BuildContext? context, Employee? employee}) {
  return Visibility(
      visible: visible!,
      child: Positioned(
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context!, new MaterialPageRoute(builder: (context) => new EmployeeProfilePage(employee: employee!,)));
                },
                child: Container(
                    color: Colors.grey,
                    height: 32,
                    width: 32,
                    child: Center(child: Icon(Icons.info, size: 24,))),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: (){
                  SnackBar snackBar = new SnackBar(content: Text("This feature isn't available", style: TextStyle(fontFamily: "Poppins"),));
                  ScaffoldMessenger.of(context!).showSnackBar(snackBar);
                },
                child: Container(
                    color: Colors.grey,
                    height: 32,
                    width: 32,
                    child: Center(child: Icon(Icons.edit, size: 24,))),
              ),
              SizedBox(width: 8,),
              InkWell(
                onTap: function!,
                child: Container(
                    color: Colors.grey,
                    height: 32,
                    width: 32,
                    child: Center(child: Icon(Icons.delete, size: 24,))),
              )
            ],
          ),
          bottom: 16,
          right: 16));
}
