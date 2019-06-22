import 'package:flutter/material.dart';

import 'app_container.dart';
import 'btn_counter.dart';
import 'txt_counter.dart';
import 'counter.dart';

void main() => runApp(MyApp());

// stateless | statefull | inherited widget
class MyApp extends StatelessWidget {
  Counter counter = new Counter();

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      counter: counter,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool hide = false;

  @override
  Widget build(BuildContext context) {
    print("rebuild");

    return Scaffold(
      appBar: AppBar(
        title: Text("Demo widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DemoStateFullWidget(),
          ],
        ),
      ),
    );
  }
}

class DemoStateFullWidget extends StatefulWidget {
  @override
  _DemoStateFullWidgetState createState() => _DemoStateFullWidgetState();
}

class _DemoStateFullWidgetState extends State<DemoStateFullWidget> {
  int count = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    print("initState()");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[TxtCounter(), BtnCounter()],
        ),
      ),
    );
  }
}
