import 'dart:convert';
import 'package:financialmanagementapp/models/event.dart';
import 'package:shared_preferences/shared_preferences.dart';

// List<Event> globalEventList = [];

class AppData{

 static List<Event> _eventList = [];
 static late SharedPreferences _sharedPreferences;
 static List<String> _jsonEventlist = [];

 static Future<void> initEvent() async {
  _sharedPreferences = await SharedPreferences.getInstance();
 final _tempJsonEventList = _sharedPreferences.getStringList('todoList');
 if(_tempJsonEventList != null){
  _jsonEventlist = _tempJsonEventList;
  _eventList = _tempJsonEventList.map((e) => Event.fromJson(jsonDecode(e))).toList();
  }
 }

 static List<Event> getEvents(){
  return _eventList;
 }

 static Future<void> addEvent(Event event) async {
  _eventList.add(event);
  _jsonEventlist.add(jsonEncode(event));
  await _sharedPreferences.setStringList('todoList', _jsonEventlist);
 }

 static Future<void> saveEvents() async {
  _jsonEventlist = _eventList.map((event) => jsonEncode(event)).toList();
  await _sharedPreferences.setStringList('todoList', _jsonEventlist);
 }

 static Future<void> deleteEvent(int index) async{
  _eventList.removeAt(index);
  _jsonEventlist.removeAt(index);
  await _sharedPreferences.setStringList('todoList', _jsonEventlist);

 }
 static getTotalexpenditure(){
  int _totalexpenditure = 0;

  for(int i = 0; i < _eventList.length; i++){
   _totalexpenditure = _totalexpenditure + _eventList[i].itemprice;
  }
  return _totalexpenditure;
 }
}
