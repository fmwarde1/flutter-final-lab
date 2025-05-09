import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList =[];

  final _myBox = Hive.box('myBox');

  void createInitialData(){
    toDoList =[
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  }
//creates the data
  void loadData() { 
    toDoList = _myBox.get("TODOLIST");
  }
//loads the data
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}