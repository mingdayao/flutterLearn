import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:AppHome()
    );
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text('this is my first flutter!')),
        body: AppBody()
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
          'Hello World, Hello Michael!!!',
          //textDirection:TextDirection.ltr,
          style: TextStyle(color: Colors.orange)
      ),
    );
  }
}