import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../widgets/listItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo_outlined),
        onPressed: () {
          print('user add');
        },
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'Tadewos App',
        ),
        centerTitle: true,
      ),
      body: Container(
          child: ListView(
        children: [
          ListItem(
            name: 'Surafel Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemu Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Kebede Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
          ListItem(
            name: 'Alemnesh Tafese',
            dep: 'IT',
            batch: '5th Year',
          ),
        ],
      )),
    );
  }
}
