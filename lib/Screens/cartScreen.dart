import 'package:flutter/material.dart';
import 'package:learning/Models/studentModel.dart';
import 'package:learning/Providers/studentProvider.dart';
import 'package:learning/Screens/homePage.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static final routeName = 'cartScreen';
  const CartScreen();

  @override
  Widget build(BuildContext context) {
    final studentProvider = Provider.of<StudentProvider>(context);
    List<StudentModel> students = studentProvider.students;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Cart Screen'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Center(
        child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return Text(students[index].name.toString());
            }),
      ),
    );
  }
}
