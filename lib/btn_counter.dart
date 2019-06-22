import 'package:flutter/material.dart';

import 'app_container.dart';

class BtnCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = AppContainer.of(context);

    return Container(
        child: RaisedButton(
      onPressed: () {
        appState.increment();
      },
      color: Colors.blue,
      child: Text(
        "+",
        style: TextStyle(fontSize: 40, color: Colors.white),
      ),
    ));
  }
}
