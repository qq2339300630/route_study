import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  const NewRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("new route"),
      ),
      body: Center(
        child: TextButton(
            child: const Text('This is new route'),
            onPressed: () async {
              var result = await Navigator.pushNamed(context, 'tip_route',arguments: '你好呀');
              print(result);
            }),
      ),
    );
  }
}

class TipRoute extends StatelessWidget {
  String text;

  TipRoute({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    text =  ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('提示'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'hello world');
                },
                child: const Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
