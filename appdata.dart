import 'package:flutter/material.dart';
import 'presentation/listpage/list_page.dart';
import 'presentation/addtodo/add_todo_page.dart';
import 'package:financialmanagementapp/controller/appdata.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppData.initEvent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ToDoHomePage(),
      // home : const AddToDoPage(),
    );
  }
}
