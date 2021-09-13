import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:samasys/view/theme/app_text_theme.dart';

Widget employeeCard(
    {String? imgUrl,
    String? fullName,
    String? position,
    String? email,
    String? phoneNumber}) {
  return Card(
    child: Container(
      height: 100,
      child: Row(
        children: [
          Container(

            child: Image.network(imgUrl!, fit: BoxFit.cover,),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("${fullName!}", style: employeeCardTextStyle["header"], maxLines: 1, overflow: TextOverflow.fade,),
                  Text("${position!}", style: employeeCardTextStyle["body"], maxLines: 1, overflow: TextOverflow.fade,),
                  Text("${phoneNumber!}", style: employeeCardTextStyle["body"], maxLines: 1, overflow: TextOverflow.fade,),
                  Text("${email!}", style: employeeCardTextStyle["body"], maxLines: 1, overflow: TextOverflow.fade,),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
