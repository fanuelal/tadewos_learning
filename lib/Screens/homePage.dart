import 'package:flutter/material.dart';
import 'package:learning/Models/studentModel.dart';
import 'package:learning/Providers/studentProvider.dart';
import 'package:learning/Screens/cartScreen.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/listItem.dart';

class HomeScreen extends StatefulWidget {
  static final routeName = 'homeScreen';
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final studentsProvider = Provider.of<StudentProvider>(context);
    List<StudentModel> students = studentsProvider.students;
    final studentProvider =
        Provider.of<StudentProvider>(context, listen: false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_shopping_cart_rounded),
        onPressed: () {
          studentProvider.createStudent(
              StudentModel(name: 'Abebe Kelete', dep: 'IT', batch: "3rd Year"));
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Tadewos App',
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              icon: Icon(Icons.shopping_cart_checkout))
        ],
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
        itemCount: students.length,
        itemBuilder: (ctx, index) {
          final StudentModel student = students[index];
          return GestureDetector(
            onDoubleTap: () {
              studentProvider.deleteStudent(student.name);
            },
            child: ListItem(
              name: student.name,
              dep: student.dep,
              batch: student.batch,
            ),
          );
        },
      )),
    );
  }
}
