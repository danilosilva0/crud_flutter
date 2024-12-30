import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  //referencing our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening the app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load the data from db
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update teh database
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }
}