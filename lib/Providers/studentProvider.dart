import 'package:flutter/material.dart';
import 'package:learning/Models/studentModel.dart';

class StudentProvider extends ChangeNotifier {
  List<StudentModel> students = [
    StudentModel(name: 'Alemitu Kebede', dep: 'CS', batch: '5th year'),
    StudentModel(name: 'Alemu Kebede', dep: 'SE', batch: '5th year'),
    StudentModel(name: 'Kebede Kebede', dep: 'IT', batch: '5th year'),
    StudentModel(name: 'Fanuel Kebede', dep: 'CS', batch: '5th year'),
    StudentModel(name: 'Eyouel Kebede', dep: 'CS', batch: '5th year'),
    StudentModel(name: 'Hab Kebede', dep: 'CS', batch: '5th year'),
  ];

  void createStudent(StudentModel student) {
    students.add(student);
    notifyListeners();
  }

  void deleteStudent(String name) {
    students.removeWhere((student) => student.name == name);
    notifyListeners();
  }
}
