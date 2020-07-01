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

class AppBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppBodyState();
  }
}

class AppBodyState extends State<StatefulWidget> {

  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Checkbox(
                  value:flag,
                  onChanged: (value) {
                    this.setState(() {
                      this.flag = value;
                    });
                  }
              ),
              Text('Agree')
            ]
        )
    );
  }
}
