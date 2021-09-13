import 'package:flutter/material.dart';

Widget employeeExpense({String? month, String? amountBorrowed, String? amountReceivable})
{
  return Card(
    child: Container(
      height: 75,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 75,
            color: Colors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.date_range),
                Text("${month!}")
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BORROWED:\t\t\$${amountBorrowed!}"),
                Divider(),
                Text("RECEIVABLE:\t\t\$${amountReceivable!}"),
              ],
            ),
          )
        ],
      ),
    ),
  );
}