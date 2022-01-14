import 'package:financialmanagementapp/controller/appdata.dart';
import 'package:financialmanagementapp/models/event.dart';
import 'package:flutter/material.dart';
import 'list-page_element.dart';
import 'list_page_fab.dart';

class ToDoHomePage extends StatefulWidget {
  const ToDoHomePage({Key? key}) : super(key: key);

  @override
  State<ToDoHomePage> createState() => _ToDoHomePageState();
}

class _ToDoHomePageState extends State<ToDoHomePage> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding : EdgeInsets.only(
          left : 10,
          bottom: 10,
          right : 10,
          top : 100,
        ),
        child : Column(
          children : [
            const Text('EXPENDITURE LIST',
              style : TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color : Colors.black,
              ),
            ),
            Expanded(
                child : ListView.builder(
                  itemBuilder:(context,index){
                    return TodoListElement(
                        event: AppData.getEvents()[index],
                      deleteEvent: (){
                          setState(() {
                            AppData.deleteEvent(index);
                          });
                      },
                    );
                  },
                  itemCount: AppData.getEvents().length,
                ),
            ),
            Expanded(
                  child: Text("Total Expenditure = AppData.getTotalexpenditure",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
          ]
        ),
      ),
      floatingActionButton: ListPageFAB(),
    );
  }
}
