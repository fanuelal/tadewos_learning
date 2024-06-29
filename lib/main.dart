import 'package:flutter/material.dart';
import 'package:learning/Providers/studentProvider.dart';
import 'package:learning/Screens/cartScreen.dart';
import 'package:provider/provider.dart';
import './Screens/homePage.dart';
import 'Models/studentModel.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

      // List<StudentModel> students = 
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StudentProvider()) ,

      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Our First App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            CartScreen.routeName: (context) => CartScreen(),
            HomeScreen.routeName: (context) => HomeScreen()
      
          },
          home: HomeScreen()),
    );
  }
}
