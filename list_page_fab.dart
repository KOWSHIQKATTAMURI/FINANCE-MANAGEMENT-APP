import 'package:financialmanagementapp/presentation/addtodo/add_todo_page.dart';
import 'package:flutter/material.dart';

class ListPageFAB extends StatelessWidget {
  const ListPageFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){
        print('Go to Add todo');
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const AddToDoPage(),
          ),
        );
      },
      backgroundColor: Colors.black,
      child: Icon(
        Icons.add,
        color: Colors.white,
      )
    );
  }
}
