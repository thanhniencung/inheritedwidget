import 'package:flutter/material.dart';
import 'counter.dart';

class AppContainer extends StatefulWidget {
  Widget child;
  Counter counter;

  AppContainer({this.counter, this.child});

  static _AppContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(AppStateInherited)
            as AppStateInherited)
        .appState;
  }

  @override
  _AppContainerState createState() => _AppContainerState(counter);
}

class _AppContainerState extends State<AppContainer> {
  Counter counter;
  _AppContainerState(this.counter);

  increment() {
    setState(() {
      counter.increment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppStateInherited(
      appState: this,
      child: widget.child,
    );
  }
}

class AppStateInherited extends InheritedWidget {
  _AppContainerState appState;

  AppStateInherited({this.appState, Widget child}) : super(child: child);

  @override
  bool updateShouldNotify(AppStateInherited oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
}
