import 'package:flutter/material.dart';

import '../util/todo_tile.dart';

class HomePage extends StatefulWidget{
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  //Checkbox changed function

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
          title: Text("TO DO App"),
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(taskName: toDoList[index], taskCompleted: toDoList[index][1], onChanged: (value) => checkBoxChanged)
        },
      ),
    );
  }
}