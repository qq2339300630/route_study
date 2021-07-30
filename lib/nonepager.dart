import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("new route"),
      ),
      body: const Center(
        child: Text('This is new route'),
      ),
    );
  }
}
