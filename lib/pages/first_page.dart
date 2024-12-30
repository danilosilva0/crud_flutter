import 'package:crud_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to the second page"),
          onPressed: () {
          Navigator.pushNamed(context, '/secondpage');
          },
        ),
      ),
    );
  }
}