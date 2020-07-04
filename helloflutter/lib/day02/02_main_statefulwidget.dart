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
      appBar: AppBar(title: Text("Stateful Test")),
      body: AppHomeBody(),
    );
  }
}

class AppHomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MyBtnStateful(),
    );
  }
}

class MyBtnStateful extends StatefulWidget {
  @override
  _MyBtnStatefulState createState() => _MyBtnStatefulState();
}

class _MyBtnStatefulState extends State<MyBtnStateful> {

  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(onPressed: () => {
              this.setState(() {
                count++;
              })
            },
                child: Text("   +  ", ),
                color: Colors.pink),
            RaisedButton(onPressed: () => {
              this.setState(() {
                count--;
              })
            },
                child: Text("   -  ", ),
                color: Colors.orange)
          ],
        ),
        Text("Current Count: $count", style: TextStyle(
            fontSize: 20
        ))
      ],
    );
  }
}
