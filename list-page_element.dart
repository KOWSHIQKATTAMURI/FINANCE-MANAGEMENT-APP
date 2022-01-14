import 'package:financialmanagementapp/models/event.dart';
import 'package:flutter/material.dart';
import 'package:financialmanagementapp/controller/appdata.dart';

class TodoListElement extends StatefulWidget {
  const TodoListElement({Key? key,
    required this.event,
    required this.deleteEvent,
  }) : super(key: key);

  final Event event;
  final Function deleteEvent;

  @override
  _TodoListElementState createState() => _TodoListElementState();
}

class _TodoListElementState extends State<TodoListElement>{

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          border: Border(
              left: BorderSide(
                color: Colors.black,
                width: 3,
              )
          )
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Align(
        alignment: Alignment.topLeft,
          child: Text(widget.event.itemname),
          ),
          Spacer(),
          Align(
            alignment: Alignment.centerRight,
            child: Text(widget.event.itemprice.toString()),
          ),
          GestureDetector(
            onTap : (){
              print('Delete this task');
              widget.deleteEvent();
            },
            child: Icon(Icons.delete)),
        ],
      ),
    );
  }
}
