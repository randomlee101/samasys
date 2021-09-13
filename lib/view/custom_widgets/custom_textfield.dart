import 'package:flutter/material.dart';
import 'package:samasys/controller/employee_field_validations.dart';

Widget customTextField({
  String? Function(String? e)? validation,
  String? label,
  TextEditingController? textEditingController
})
{
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${label!}*"),
        SizedBox(height: 8,),
        TextFormField(
          validator: validation,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: textEditingController!,
        )
      ],
    ),
  );
}