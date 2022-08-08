import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget cursoItem (String titulo, String desc, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.all(10),
    height: 120,
    child: Center(
     child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
            MaterialStateProperty.all(Colors.lightBlue.shade300),
        ),
        child: Text(titulo,
          style: TextStyle(fontSize: 19)),
        onPressed: () {}
      )
    ),
    decoration: BoxDecoration(
        color: Colors.lightBlue.shade300,
        border: Border.all(color: Colors.blue.shade700, width: 10),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.black, offset: Offset(5, 5))
        ]),
  );
}