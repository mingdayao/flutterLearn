import 'package:flutter/material.dart';

main() => runApp(App());


/**
 *
 * stateless -> stateful => alt+enter
 * extract content of build to another new widget -> alt+enter+w
 *
 *
 *
 * by default this method didUpdateWidget wont been invoked
 * parent stateful widget setState() it will reinvoke parent build and will
 * follow steps. remember wont recreate state object. just recreate widget object => call didUpdateWidget => build()  (with existing state object)
 *
 *
 * I/flutter (11851): 01 - AppHomeBody.constructor() invoked....
 * I/flutter (11851): _AppHomeBodyState.didUpdateWidget() invoked....
    I/flutter (11851): 05 - _AppHomeBodyState.build() invoked....
 *
 *
 *
 *
 *
 *
 */


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AppHome(),
    );
  }
}

class AppHome extends StatefulWidget {
  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful LifeCycle")),
      body: AppHomeBody(),
      floatingActionButton: RaisedButton(onPressed: () {
        this.setState(() { });
      }),
    );
  }
}

class AppHomeBody extends StatefulWidget {

  AppHomeBody() {
    print("01 - AppHomeBody.constructor() invoked....");
  }


  @override
  _AppHomeBodyState createState() {
    print("02 - AppHomeBody.createState() invoked....");
    return _AppHomeBodyState();
  }
}

class _AppHomeBodyState extends State<AppHomeBody> {

  var count = 0;

  _AppHomeBodyState() {
    print("03 - _AppHomeBodyState.constructor() invoked....");
  }

  initState() {
    super.initState();
    print("04 - _AppHomeBodyState.initState() invoked....");
  }

  didChangeDependencies() {
    super.didChangeDependencies();
    print("_AppHomeBodyState.didChangeDependencies() invoked....");
  }

  @override
  Widget build(BuildContext context) {
    print("05 - _AppHomeBodyState.build() invoked....");
    return Column(
      children: <Widget>[
        RaisedButton(onPressed: () {
          this.setState(() {
            count++;
          });
        }),
        Text("current count $count")
      ],
    );
  }

  dispose() {
    print("06 - _AppHomeBodyState.dispose() invoked....");
    super.dispose();
  }

  @override
  void didUpdateWidget(AppHomeBody oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("_AppHomeBodyState.didUpdateWidget() invoked....");
  }



}

