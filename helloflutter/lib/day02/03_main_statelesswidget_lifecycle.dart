import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateless LifeCycle")),
      body: AppHomeBody(),
    );
  }
}

class AppHomeBody extends StatelessWidget {

  AppHomeBody() {
    print("01 - AppHomeBody.constructor() invoked....");
  }

  @override
  Widget build(BuildContext context) {
    print("02 - AppHomeBody.build() invoked....");
    return Text("Hello World",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ));
  }
}

