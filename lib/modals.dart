import 'package:flutter/material.dart';


class Modal extends StatefulWidget {
  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  Map <String, bool> todo = {
    "JS": false,
    "JAVA": false,
    "PHP": false,
    "Database": false
  };
  @override
 Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text("Todo List Apps"),
        ),
        body: ListView(
          children: todo.keys.map((String key){
            return CheckboxListTile(
              title: Text(key),
              value: todo[key],
              onChanged: (bool value){
                setState(() {
                 todo[key] = value; 
                });
              },
            );
          }).toList(),
        ),
       
      );
}

