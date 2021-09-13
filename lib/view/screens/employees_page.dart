import 'package:flutter/material.dart';
import 'package:samasys/controller/employee_profile.dart';
import 'package:samasys/model/employee.dart';
import 'package:samasys/view/custom_widgets/custom_app_bar.dart';
import 'package:samasys/view/custom_widgets/interactive_employee_card.dart';
import 'package:samasys/view/theme/app_text_theme.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffKey = GlobalKey<ScaffoldState>();
    GlobalKey<AnimatedListState> _key = GlobalKey<AnimatedListState>();

    return Scaffold(
      key: _scaffKey,
      drawer: drawer(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customAppBar(key: _scaffKey),
              Text(
                "EMPLOYEES",
                style: sectionHeader,
              ),
              Expanded(
                  child: StreamBuilder<List<Employee>>(
                      stream: fetchAllEmployees().asStream(),
                      builder: (context, snapshot) {
                        while (!snapshot.hasData) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        List<Employee>? employees = snapshot.data;
                        return AnimatedList(
                            key: _key,
                            initialItemCount: employees!.length,
                            itemBuilder: (context, index, animation) =>
                                FadeTransition(
                                  key: UniqueKey(),
                                  opacity: animation,
                                  child: InteractiveEmployeeCard(
                                    employee: employees[index],
                                    function: () {
                                      employees.remove(employees[index]);
                                      _key.currentState!.removeItem(index, (context, animation) => new Container());
                                    },
                                  ),
                                ));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
