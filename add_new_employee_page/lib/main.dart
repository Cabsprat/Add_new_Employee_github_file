import 'package:add_new_employee_page/view/Add_New_Employee_Page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AddNewEmployeePage',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const AddNewEmployeePage(),
    );
  }
}
