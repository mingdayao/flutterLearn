import 'package:flutter/material.dart';

main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(title:Text('this is my first flutter')),
            body: Center(
              child: Text(
                  'Hello World, Hello Michael!',
                  //textDirection:TextDirection.ltr,
                  style: TextStyle(color: Colors.orange)
              ),
            ),
          )
      )
  );
}