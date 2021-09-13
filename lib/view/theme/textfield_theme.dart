import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecorationTheme inputDecorationTheme = new InputDecorationTheme(
  contentPadding: EdgeInsets.all(8),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.zero)
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.zero)
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.zero),
    borderSide: BorderSide(color: Colors.red)
  )
);