import 'package:crud_flutter/util/my_button.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {

  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onCancel, required this.onSave});

  void addTask(){

  }

  void cancelTask(){

  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            MyButton(text: "Save", onPressed: onSave),
            const SizedBox(width: 8,),
            MyButton(text: "Cancel", onPressed: onCancel),
          ],)
        ],),
      ),
    );
  }
}
