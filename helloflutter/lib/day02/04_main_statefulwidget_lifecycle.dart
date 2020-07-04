import 'package:flutter/material.dart';

main() => runApp(App());

/**
 *
    I/flutter (11851): 01 - AppHomeBody.constructor() invoked....
    I/flutter (11851): 02 - AppHomeBody.createState() invoked....
    I/flutter (11851): 03 - _AppHomeBodyState.constructor() invoked....
    I/flutter (11851): 04 - _AppHomeBodyState.initState() invoked....
    I/flutter (11851): 05 - _AppHomeBodyState.build() invoked....
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

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful LifeCycle")),
      body: AppHomeBody(),
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
    return Text("Hello World");
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

