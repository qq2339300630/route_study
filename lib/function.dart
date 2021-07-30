import 'package:flutter/material.dart';

class WillPopScopeTestRoute extends StatefulWidget {
  const WillPopScopeTestRoute({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return WillPopScopeTestRouteState();
  }
}

class WillPopScopeTestRouteState extends State<WillPopScopeTestRoute> {
  DateTime? _lastPressedAt;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Container(
          alignment: Alignment.center,
          child: const Text('1ms 不退'),
        ),
        onWillPop: () async {
          if (_lastPressedAt == null ||
              DateTime.now().difference(_lastPressedAt!) >
                  const Duration(seconds: 1)) {
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        });
  }
}
