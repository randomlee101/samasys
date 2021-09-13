import 'package:flutter/material.dart';
import 'package:samasys/controller/employee_field_validations.dart';
import 'package:samasys/controller/employee_profile.dart';
import 'package:samasys/view/custom_widgets/custom_app_bar.dart';
import 'package:samasys/view/custom_widgets/custom_textfield.dart';
import 'package:samasys/view/screens/employees_page.dart';
import 'package:samasys/view/theme/app_text_theme.dart';

class CreateEmployeeProfile extends StatefulWidget {
  const CreateEmployeeProfile({Key? key}) : super(key: key);

  @override
  _CreateEmployeeProfileState createState() => _CreateEmployeeProfileState();
}

class _CreateEmployeeProfileState extends State<CreateEmployeeProfile> {
  var _formKey = GlobalKey<FormState>();
  var _fullName = new TextEditingController();
  var _phoneNumber = new TextEditingController();
  var _email = new TextEditingController();
  var _position = new TextEditingController();
  var _salary = new TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    clearAll();
  }

  void clearAll()
  {
    _fullName.clear();
    _phoneNumber.clear();
    _email.clear();
    _position.clear();
    _salary.clear();
  }


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
              child: Form(
                key: _formKey,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
                  children: [
                    Text("CREATE EMPLOYEE PROFILE", style: sectionHeader,),
                    customTextField(
                        label: "Full Name",
                        validation: validateFullName,
                        textEditingController: _fullName),
                    customTextField(
                        label: "Phone Number",
                        validation: validatePhoneNumber,
                        textEditingController: _phoneNumber),
                    customTextField(
                        label: "Email",
                        validation: validateEmail,
                        textEditingController: _email),
                    customTextField(
                        label: "Position",
                        validation: validatePosition,
                        textEditingController: _position),
                    customTextField(
                        label: "Salary",
                        validation: validateSalary,
                        textEditingController: _salary),
                    TextButton(
                        onPressed: () async {
                          bool isFormValid = _formKey.currentState!.validate();

                          if (isFormValid) {
                            insertEmployeeProfile(
                                fullName: _fullName,
                                phoneNumber: _phoneNumber,
                                salary: _salary,
                                email: _email,
                                position: _position);

                            Navigator.pop(context);
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => new EmployeesPage())).then((value) => clearAll());
                          }
                        },
                        child: Text("SAVE"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
