import 'package:financialmanagementapp/controller/appdata.dart';
import 'package:financialmanagementapp/presentation/listpage/list_page.dart';
import 'package:flutter/material.dart';
import 'package:financialmanagementapp/models/event.dart';

class AddToDoPage extends StatefulWidget {
  const AddToDoPage({Key? key}) : super(key: key);

  @override
  State<AddToDoPage> createState() => _AddToDoPageState();
}

class _AddToDoPageState extends State<AddToDoPage> {

  String itemname = "";
  int itemprice = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left : 10,
          bottom: 10,
          right: 10,
          top: 100,
        ),
        child : Column(
          children : [
            const Text('FINANCIAL MANAGEMENT APP',
              style : TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color : Colors.black,
              ),
            ),
            SizedBox(height : 50),
            Padding(
              padding : EdgeInsets.symmetric(
                 horizontal: 40,
              ),
              child : TextFormField(
                decoration: InputDecoration(
                  hintText: 'ENTER ITEM NAME',
                ),
                onChanged: (val){
                  setState(() {
                    itemname = val;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'ENTER ITEM PRICE',
                ),
                onChanged: (val){
                  setState(() {
                    itemprice = int.parse(val);
                  });
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
      if (itemname != ""){
        //adding to event global variable
        AppData.addEvent(Event(itemname: itemname,itemprice: itemprice));
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => const ToDoHomePage(),
          ),
        );
    }
        },
        backgroundColor: Colors.black,
        child : Icon(
          Icons.save,
          color: Colors.white,
        ),
      ),
    );
  }
}
