import 'package:flutter/material.dart';

import 'app_container.dart';

class TxtCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = AppContainer.of(context);

    return Container(
      child: Text(
        "${appState.counter.count}",
        style: TextStyle(fontSize: 40, color: Colors.black),
      ),
    );
  }
}
